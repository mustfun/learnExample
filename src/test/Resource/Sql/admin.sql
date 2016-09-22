SELECT * FROM `admin` WHERE  am_username='wyq';    //管理员表
SELECT * from admin_role;                          //职位表
SELECT * FROM channel_relation

SELECT * FROM admin_work_remark ORDER BY id desc LIMIT 1000;

SELECT * from admin WHERE am_username="stzengqinghui"
SELECT * from admin_department  WHERE am_id=349

SELECT * from user_info LIMIT 10;


SELECT *,case when name ='中国银行' then '1' when name ='招商银行' then '1' else '0' END as typeFlag FROM bank where use_type in (1,2)


--子查询里面查询然后作为字段，放到外面的查询里面。
SELECT
	ui.id user_id,
	ui.mobile_num,
	(
		SELECT
			SUM(amount)
		FROM
			vip_account
		WHERE
			user_id = ui.id
		AND is_cash = 0
		AND fp_id IS NOT NULL
		AND create_time < 2015-6-26
	) vipaccount,
	(
		SELECT
			SUM(ba.price_principal) total
		FROM
			borrows_accept ba
		INNER JOIN borrows b ON b.id = ba.bo_id
		WHERE
			ba.user_id = ui.id
		AND b.bo_is_success = 1
		AND ba.is_pay = 0
		AND ba.is_vip = 0
		AND ba.create_time < 2015-6-26
	) lendaccount
FROM
	user_info ui
WHERE
	ui.user_type = 1
AND ui. STATUS = 1
AND ui. PASSWORD IS NOT NULL
AND ui.register_time < 2015-6-26


 select 
    	title,
    	content,
    	create_time 
    from admin_work_remark WHERE bo_id='344054' ORDER BY id DESC;

SELECT * FROM admin_work_remark WHERE remark_aim=3207745 and bo_id=344088 ORDER BY id DESC LIMIT 1000;

SELECT * from user_info WHERE id=3207745;

select br.*,b.bp_id,b.bo_price from borrows_repayment br join borrows b on br.bo_id=b.id where b.bo_is_success=1 and b.bo_all_repayed=0
  and br.user_id =3207745
       and b.p_id in (77,88)

SELECT * from borrows_repayment ORDER BY id desc limit 1000;

SELECT * FROM user_info WHERE id=344088


SELECT * from finance_role 














