SELECT
	ubi.id AS banks_id,
	ba. NAME AS banks_cat,
	ubi.bank_card_no AS banks_account,
	re. NAME AS banks_province,
	re2. NAME AS banks_city,
	ubi.open_bank_code AS banks_name,
	CASE
WHEN ba. NAME = '中国银行' THEN
	'1'
WHEN ba. NAME = '招商银行' THEN
	'1'
ELSE
	'0'
END AS typeFlag
FROM
	user_bankcard_info ubi
LEFT JOIN bank ba ON ubi.bank_code = ba.id
LEFT JOIN region re ON ubi.province_code = re. CODE
LEFT JOIN region re2 ON ubi.city_code = re2. CODE
WHERE
	user_id = 1032483
AND is_deleted = 0
AND EXISTS (
	SELECT
		id
	FROM
		user_bankcard_auth
	WHERE
		bank_card_id = ubi.id
	AND auth_type = 2
	AND auth_status = 1
)
ORDER BY
	is_default,
	ubi.create_time


SELECT * from user_bankcard_auth WHERE user_id=1032483;






SELECT
	user_id
FROM
	user_bankcard_auth
WHERE
	user_id IN (
		SELECT
			user_id
		FROM
			user_bankcard_auth
		GROUP BY
			user_id
		HAVING
			count(user_id) >= 2
	)
ORDER BY
	id DESC
LIMIT 10;

SELECT * from user_info WHERE id='3207697';




update borrows set bo_title ='投资',bo_aim='投资' where id = 6687

SELECT * from borrows WHERE id=6687

SELECT br.*, m.customer_servicer as am_id_follow_cs, m.user_name as m_username,br.user_id as m_id
                      FROM borrows_repayment br
                      left join borrows b on br.bo_id = b.id
                      left join user_info m on m.id = b.user_id
				      where br_is_repay =0 and floor((unix_timestamp(br_time)-unix_timestamp())/3600/24) = 7
				      and b.bo_is_success = 1 and br_price - br_repayed_tech_fee >=200000 LIMIT 10