SELECT
				b.user_id,
				p.id as p_id,
			  b.bo_expect,
			  b.bo_expect_cat,
				b.bo_price,
				b.bo_rate,
				b.bo_is_finish,
				b.publish_time
			FROM
				`borrows` b
			LEFT JOIN user_info ui ON b.user_id = ui.id
			LEFT JOIN products p ON b.p_id =p.id
			LEFT JOIN borrows_prepare bp ON b.bp_id=bp.id
			WHERE
				b.bo_is_state = 1
			AND ui.user_type = 5
			AND b.bo_is_success=1
			And b.bo_all_repayed=1
			AND b.user_id = 912712




SELECT * from borrows WHERE  p_id=90 ORDER BY id desc limit 100;
SELECT * from borrows_prepare WHERE p_id=90 ORDER BY id DESC limit 100;

SELECT * from borrows WHERE bo_is_success=0 ORDER BY id desc limit 100;
SELECT * from user_info where id =3207351;

SELECT   b.publish_time as publish_time,
                      mfd.real_name as realname,
                      mfd.id_num as idnum,
                      mfd.mobile_num as mobilenum,
		              mfd.user_name as username,
                      uid.qq as qq,
                     usi.academy as institution,
                     b.id as bo_id,
                     b.bo_price,
                     b.bo_expect,
                     b.bo_aim,
                     b.bo_change_remark
                     FROM user_info mfd
		LEFT JOIN borrows b ON mfd.id=b.user_id
		left join user_info_detail uid on uid.user_id = mfd.id
		left join user_student_info usi on usi.user_id = mfd.id
		WHERE b.bo_is_success=0 AND mfd.id=3207346

SELECT
	b.user_id,
	p.id AS p_id,
	b.bo_expect,
	b.bo_expect_cat,
	b.bo_price,
	uc.cutValue AS bo_paytype,
	b.bo_rate,
	b.bo_is_success,
	b.bo_all_repayed
FROM
	`borrows` b
LEFT JOIN user_info ui ON b.user_id = ui.id
LEFT JOIN products p ON b.p_id = p.id
LEFT JOIN borrows_prepare bp ON b.bp_id = bp.id
LEFT JOIN user_InterestrateCut uc ON b.bp_id = uc.bp_id
WHERE
	b.bo_is_state = 1
AND ui.user_type = 5
AND b.bo_is_success IN (1, 2, 3, 4)
AND b.bo_all_repayed = 0
AND b.user_id = 912712

SELECT
				b.user_id,
				p.id as p_id,
			 	b.bo_expect,
			  	b.bo_expect_cat,
				b.bo_price,
				b.bo_rate,
				b.publish_time,
				b.bo_is_success,
				b.bo_all_repayed
			FROM
				`borrows` b
			LEFT JOIN user_info ui ON b.user_id = ui.id
			LEFT JOIN products p ON b.p_id =p.id
			LEFT JOIN borrows_prepare bp ON b.bp_id=bp.id
			WHERE
				b.bo_is_state = 1
			AND ui.user_type = 5
			AND b.user_id =442274

SELECT * from borrows_repayment ORDER BY id DESC LIMIT 10;

select user_name,real_name,id_num from user_info where id=442274

SELECT * from user_info WHERE id_num <>'' ORDER BY id DESC LIMIT 1000;

SELECT * from user_InterestrateCut WHERE bp_id is not null ORDER BY id desc limit 100;
SELECT user_id from borrows_prepare WHERE id=448281

SELECT * from user_info WHERE id=

SELECT * from user_picture_record ORDER BY id DESC LIMIT 1000;

SELECT * from borrows b LEFT JOIN user_info u ON b.user_id=u.id WHERE b.bo_is_success=1 and b.bo_all_repayed=0 and u.user_type=5 LIMIT 1000;


SELECT * from 
user_profile_info ORDER BY id DESC LIMIT 100;

SELECT * from borrows WHERE bo_rate!=100 ORDER BY id desc limit 10

select ad.id as am_id,ad.am_name from admin ad
				left join mx_auto_assign maa on maa.am_id=ad.id
				where maa.final_audit=1 and p_id=83

SELECT * from finance_log WHERE user_id=1433026 ORDER BY id desc limit 100; 

SELECT * from user_file_info ORDER BY id desc limit 1000;

SELECT * from user_info ORDER BY id DESC limit 10000;
SELECT * from user_info WHERE mobile_num=15307408066

SELECT * from data_dict ORDER BY id desc;
SELECT * from borrows ORDER BY id desc LIMIT 100;

SELECT
                    	ufi.file_path AS idnum_photo
                    FROM
                    	user_file_info ufi
                    LEFT JOIN user_file_audit_info ufai ON ufi.file_audit_id = ufai.id
                    LEFT JOIN user_file_type_info ufti ON ufai.file_type_id = ufti.id
                    WHERE ufti.file_type_name='公安部水印照片' AND ufai.user_id=5470109

SELECT * from user_info WHERE user_name='dzyitar'

SELECT * from borrows_prepare WHERE user_id=3207346 LIMIT 100;
SELECT * from borrows WHERE user_id=3207346

SELECT * from user_file_audit_info WHERE user_id=5470109

SELECT * from borrows WHERE user_id=3208282;
SELECT * from borrows WHERE  user_id=3208282 
SELECT * from borrows_repayment WHERE user_id=3208282 ORDER BY id DESC;
SELECT * from user_info WHERE id=3208282;
SELECT * from gab_water_photo_log ORDER BY id desc;

SELECT * from borrows_prepare WHERE user_id=3208282

SELECT * from borrows_raise WHERE user_id=3208282

SELECT * from borrows_repayment WHERE bo_id=344327

UPDATE user_info SET is_cheat = 1 WHERE is_cheat != 1 AND id IN (
            	SELECT br.user_id
            	FROM borrows_repayment br
            	LEFT JOIN borrows bo ON br.bo_id = bo.id
            	WHERE  bo.p_id in(77,83,87)
            	AND (( br.br_is_repay = 0
            			AND DATE_ADD(br_time, INTERVAL 60 DAY) <= NOW()
            		)OR (
            			br.br_is_repay = 1
            			AND DATE_ADD(br_time, INTERVAL 60 DAY) <= br_repay_time
            		)) ORDER by br.id desc) limit 1 ;

SELECT * from products ORDER BY id desc limit 1000;

UPDATE user_info SET is_cheat = 1 WHERE is_cheat != 1 AND id=413194

SELECT * from user_student_info ORDER BY id desc limit 100;

SELECT * from user_info WHERE real_name='马冬梅'

SELECT * from user_info WHERE id=3208232;
SELECT * from borrows WHERE user_id=3207346;
SELECT * from borrows_prepare WHERE user_id=3207346;
SELECT * from borrows_archive ORDER BY id desc limit 100;
SELECT * from finance_account WHERE user_id=3208232;
SELECT * from borrows_repayment WHERE user_id=3208232;

SELECT * from user_info WHERE user_name='dzyitar'

SELECT * from borrows_repayment WHERE user_id=5470460;

SELECT * from borrows_repayment ORDER BY id DESC;

SELECT valid_education from user_student_info  ORDER BY id desc limit 100;

SELECT * from user_info WHERE user_name='test03280';

SELECT * from borrows_repayment WHERE user_id=5470460;
SELECT * from borrows_repayment limit 100;
SELECT * from borrows WHERE id=344365
SELECT * from user_info ORDER BY id desc limit 10;

SELECT * from gab_water_photo_log WHERE user_id=3208232;

SELECT * from user_info WHERE user_name='15823454_1'#5470484
SELECT * from borrows WHERE user_id=5470484;
SELECT * from borrows_prepare WHERE user_id=5470484

SELECT count(1) from gab_water_photo_log WHERE code=0;

select remark_aim,
    	title,
    	content,
    	create_time 
    from admin_work_remark
   where remark_aim=3207346 and
    		bo_id = 344358
    	order by create_time desc

SELECT * from admin_work_remark ORDER BY id desc limit 100;
SELECT * from borrows WHERE id=344358;
SELECT * from borrows_prepare WHERE user_id=3207346
SELECT * from user_info WHERE id=3208232

SELECT * from user_info WHERE user_name='hinono03'

SELECT id FROM borrows_raise WHERE bp_id =556235
SELECT * from borrows_prepare WHERE user_id=86546024;
SELECT * from borrows WHERE user_id=86546024;

SELECT * from user_info WHERE mobile_num='8888822221'
SELECT * from 

SELECT * from user_sign_record ORDER BY id desc limit 100;

INSERT INTO `data_dict` VALUES (859, 'Mg.MXD.IOS.history.version', ' 美国名校贷ios版本号', NULL, '1.2.0', NULL, '美国名校贷ios版本号', 1, 1, '2016-5-30 16:31:33', '2016-5-30 16:31:33');
SELECT * from data_dict ORDER BY id desc limit 100;

SELECT * from site_flash_setting ORDER BY id desc 




SELECT * from unifi_InterestrateCut ORDER BY id desc limit 100;

SELECT * from user_bankcard_info ORDER BY id desc limit 100;

SELECT * from borrows_archive ORDER BY id desc limit 100;

SELECT * from user_info WHERE mobile_num='8888822221'

SELECT * from user_bankcard_info WHERE user_id='3296080'

SELECT * from borrows WHERE user_id=7776074;   #968294
SELECT * from borrows_prepare WHERE user_id=7776074;


SELECT * from borrows_repayment WHERE user_id='7776074'

SELECT * from withdraw_cash_alipay ORDER BY id desc limit 100;

SELECT * from finance_account WHERE user_id=3296080


SELECT * from user_bankcard_auth ORDER BY id desc limit 100;

SELECT * from user_alipay_info WHERE user_id=7776074

SELECT * from user_bankcard_info WHERE user_id=7776074

SELECT * from user_alipay_info WHERE user_id=7776074

SELECT * from finance_account WHERE user_id=7776074
SELECT * from withdraw_cash_alipay WHERE user_id=7776074

SELECT * from finance_role ORDER BY id desc limit 100;
SELECT * from finance_account WHERE role_id=11 or role_id=12 limit 100;

SELECT * from user_info WHERE mobile_num='8663049003'  # 7154908
SELECT * from borrows WHERE user_id=7154908;
SELECT * from borrows_prepare WHERE user_id=7154908;
SELECT * from borrows_repayment WHERE user_id=7154908
SELECT * from borrows_archive  ORDER BY id desc limit 100;

SELECT * from user_bankcard_info WHERE user_id=7154908;
SELECT * from user_alipay_info WHERE user_id=7154908;
SELECT * from finance_account WHERE user_id=7154908;
SELECT * from borrows_bidding WHERE bo_id=968296;
SELECT * from withdraw_cash_alipay WHERE user_id=7154908;

SELECT * from finance_operation_relation ORDER BY id desc limit 100;

SELECT * from finance_operation ORDER BY id desc limit 1000;

update  gab_water_photo_log set code=-4444,info='骏聿操作失误' where create_time between '2016-08-02 11:20:35' and '2016-08-02 15:06:48'

SELECT * from user_info WHERE user_name='18019281_209'


select code from user_InterestrateCut


INSERT INTO data_dict VALUES (754, 'Mg.MXD.Android.history.version', ' 美国名校贷pro版android版本号', NULL, '1.5', NULL, '美国名校贷Pro版android版本号', 1, 1, '2016-8-5 16:31:33', '2016-8-5 16:31:33');


SELECT * from data_dict   ORDER BY id desc limit 1000;

INSERT INTO data_dict VALUES (755, 'unifi_little_limitHighest', 'UniFi小额贷最大借款金额', 1, '50000', NULL, 'UniFi小额贷最大借款金额', 1, 1, '2016-4-22 20:00:02', '2016-4-22 20:00:02');


INSERT INTO data_dict VALUES (726, 'unifi_little_limitHighest', 'UniFi小额贷最大借款金额', 1, '50000', NULL, 'UniFi小额贷最大借款金额', 1, 1, '2016-4-22 20:00:02', '2016-4-22 20:00:02');






SELECT * from user_student_info WHERE user_id=1267197
select code from user_hkconpon


SELECT * from user_info WHERE mobile_num='8888822221'

SELECT
  ui.id,
	ui.real_name,
	ui.mobile_num,
	uai.channel_id,
	uai.landing_page
FROM
	user_info ui
INNER JOIN user_approach_info uai ON ui.id = uai.user_id
left JOIN borrows b ON ui.id=b.user_id
WHERE 
	uai.landing_page LIKE "%美国%" AND b.id is null


SELECT DISTINCT user_id from borrows WHERE p_id=94 AND bo_is_success=3

UPDATE user_alipay_info SET alipay_no='13520686750' WHERE id=4008010

#给UniFi支付宝一个角色
INSERT INTO finance_role VALUES (56, 'UniFi支付宝', 'unifi_alipay_fee', 'UniFi支付宝手续费累计账户', 0, 0, 1, 0, 1, '2016-8-11 13:04:16', '2016-8-11 13:04:16');

#给UniFi支付宝生成账户
INSERT INTO finance_account (role_id,`version`,create_time,update_time)
VALUES((SELECT id FROM finance_role where role_keyword='unifi_alipay_fee'),1,NOW(),NOW());

#UniFi支付宝建立资金转换关系
INSERT INTO `finance_operation_relation` VALUES (612, 90, 'tixian_fee', 7, '提现手续费', 56, '提现手续费', 1, 1, '2016-8-11 10:40:10', '2015-8-11 10:40:10');
INSERT INTO `finance_operation_relation` VALUES (613, 90, 'tixian_fee', 56, '提现手续费', 7, '提现手续费', 1, 1, '2016-8-11 10:40:10', '2015-8-11 10:40:10');


 SELECT id AS id,bo_id AS boId,br_time AS brTime FROM borrows_repayment
        where
			   br_is_repay = 0 and UNIX_TIMESTAMP(br_time) + 86400 < UNIX_TIMESTAMP()


SELECT
				b.user_id,
			  	b.bo_expect,
			  	b.bo_expect_cat,
				b.bo_price,
				b.bo_rate
			FROM
				`borrows` b
			LEFT JOIN user_info ui ON b.user_id = ui.id
			WHERE
				b.bo_is_state = 1
			AND ui.user_type = 5
			AND b.bo_is_success=1
			And b.bo_all_repayed in (0,1)
			AND b.user_id = 43242423
			And b.p_id=94