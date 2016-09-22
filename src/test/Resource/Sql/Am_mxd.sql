SELECT * from user_student_info ORDER BY id desc limit 100;
SELECT * from user_sign_record ORDER BY id desc limit 100;

SELECT * from region ORDER BY code desc limit 100;

SELECT * from region WHERE version=1 and level in (1,2);

SELECT * from user_sign_record ORDER BY id desc limit 100;

SELECT * from user_student_info ORDER BY id desc limit 100;
SELECT * from borrows_dunning_contact ORDER BY id desc limit 100;

SELECT * from region ORDER BY code desc limit 1000;

SELECT * from user_info WHERE mobile_num='18995850623'


SELECT * from user_sign_record ORDER BY id desc limit 100;


SELECT * from user_info WHERE real_name='安子晨'

SELECT * from borrows_prepare WHERE user_id=3208282


SELECT * from borrows_dunning_contact WHERE user_id=6833286 ORDER BY id desc limit 1000;

SELECT * FROM user_info WHERE user_type=5  ORDER BY id desc limit 1000 ;
SELECT * from user_info WHERE real_name='王晓明'
SELECT * from user_info WHERE mobile_num =15107514931;
SELECT * from borrows WHERE user_id=3207346;
SELECT * from borrows_prepare WHERE user_id=3207346;
SELECT * from user_info WHERE id='3207346'

SELECT * from borrows_repayment ORDER BY id desc limit 100;
 select br.*,b.bp_id,b.bo_price from borrows_repayment br join borrows b on br.bo_id=b.id where b.bo_is_success=1 and b.bo_all_repayed=0  and br.user_id =3207346 
       and b.p_id in (94)em

SELECT * from user_info ORDER BY id desc limit 500;

SELECT * from user_file_audit_info ORDER BY id desc LIMIT 1000;
SELECT * from user_file_info ORDER BY id desc limit 1000;
SELECT * from user_file_type_info ORDER BY id desc limit 2;

SELECT ufai.file_type_id, FROM user_file_audit_info ufai
				INNER JOIN user_file_info ufi ON ufi.file_audit_id = ufai.id
				WHERE ufai.user_id=3207346  

SELECT count(0),ufai.user_id FROM user_file_audit_info ufai
				LEFT JOIN user_file_info ufi ON ufi.file_audit_id = ufai.id WHERE user_id>650000
			GROUP BY ufai.user_id HAVING count(ufai.user_id)>4   limit 10

SELECT * from borrows WHERE user_id=5470528;

SELECT * from borrows_prepare WHERE user_id=5470528;

SELECT LAST_INSERT_ID() AS id

SELECT * from borrows ORDER BY id desc limit 10;
SELECT * from borrows_repayment ORDER BY id desc limit 100;

SELECT * from user_bankcard_info WHERE is_default=1 ORDER BY id desc limit 100;

SELECT * from borrows ORDER BY id desc limit 100;
SELECT * from borrows WHERE user_id=3207346;
select id, user_id, bank_card_no, bank_code, province_code, city_code, open_bank_code, last_used_time, in_money, out_money, is_default, is_deleted, create_time, update_time, creater, updater, version from user_bankcard_info where   is_deleted=0 and user_id=3207346 limit 1 

SELECT * from data_dict ORDER BY id desc limit 100;

SELECT bo_guid,bo_contract from borrows ORDER BY id desc LIMIT 100;
SELECT * from text_template ORDER BY id desc  LIMIT 2
SELECT * from text_template WHERE tt_kwd='loan_assure_protocol_student2';   #loan_credit_protocol_student
SELECT * from text_template WHERE tt_kwd='loan_credit_protocol_student' 
SELECT passport from user_info ORDER BY id desc limit 100;
ROLLBACK;

SELECT * from borrows WHERE user_id=3207346;




SELECT * from borrows_prepare WHERE user_id=3207346;

SELECT * from user_info WHERE mobile_num

SELECT * from borrows_dunning_contact WHERE user_id=3207346 ORDER BY id desc limit 1000;

SELECT count(0) FROM user_file_audit_info ufai
				LEFT JOIN user_file_info ufi ON ufi.file_audit_id = ufai.id
				WHERE ufai.user_id=3207346 AND ufai.file_type_id =50 order by ufi.id 
SELECT * from user_file_audit_info WHERE user_id=3207346

SELECT * from user_sign_record ORDER BY id desc LIMIT 100;

SELECT * from user_info WHERE id=3207346;
SELECT * from user_profile_info WHERE user_id=3207346

SELECT count(0) FROM user_info WHERE id=3207346 AND pay_password='it7891234'
  
SELECT * from borrows_repayment  WHERE user_id=3207346

SELECT * from borrows_dunning_contact WHERE user_id=6833527 AND name='护照' ORDER BY id desc LIMIT 1

SELECT a.id as fa_id
				FROM finance_role r
				JOIN finance_account a ON r.id=a.role_id
				WHERE r.role_keyword='chongzhi'

SELECT * from kuaiq_orders ORDER BY id desc limit 100;

SELECT * from finance_log ORDER BY id desc limit 100


SELECT * from user_bankcard_auth WHERE user_id=3207346

SELECT * from user_info WHERE id=3207346
SELECT * from user_login_info WHERE user_id=3207346

SELECT * FROM `user_bankcard_auth` WHERE user_id = ? and bank_card_id =? and auth_status=1 and auth_type=

SELECT * from borrows WHERE user_id=3207741

SELECT * from borrows_dunning_contact WHERE user_id=86545404 ORDER BY id desc LIMIT 100;

SELECT * from admin_work_remark ORDER BY id desc limit 100;

SELECT * from mxd_refuse_reason_template 

 SELECT count(0) FROM user_file_audit_info ufai
				LEFT JOIN user_file_info ufi ON ufi.file_audit_id = ufai.id
				WHERE ufai.user_id=86545418 AND ufai.file_type_id =50
 order by ufi.id 

 SELECT * FROM user_file_audit_info ORDER BY id desc limit 100;

 SELECT * FROM user_file_info ORDER BY id desc limit 100

SELECT * from user_info WHERE mobile_num="8663041001";
SELECT * from finance_account WHERE user_id="86545516"


SELECT * from user_info WHERE id=86545427;

SELECT * from online_recharge ORDER BY id desc limit 10;
SELECT * from finance_log ORDER BY id desc LIMIT 100;

SELECT * from recharge_log ORDER BY id desc limit 10;

INSERT into online_recharge(user_id,recharge_price,price,status) values(23131,1200,0,0)

SELECT * from data_dict ORDER BY id desc limit 100;

SELECT * from user_info WHERE id=3207346

SELECT * from user_sign_record 
SELECT * from user_bankcard_auth WHERE user_id=3207346;
SELECT * from user_bankcard_info WHERE user_id=3207346;

SELECT * from user_bankcard_info WHERE id=1125182;

SELECT * from user_bankcard_auth WHERE  user_id=86545471;


SELECT * from user_info WHERE mobile_num=13918304603;

SELECT * from finance_role LIMIT 100

SELECT * from user_info ORDER BY id desc LIMIT 100;

SELECT * from america_school WHERE email='' OR email=null
SELECT * from america_region 

SELECT mobile_num from user_info WHERE id=86545471

SELECT * from timing_task ORDER BY id desc LIMIT 100;


SELECT b.id, MAX(br.id) br_id, MAX(br_time) br_time,
				MAX(br_overdue_terms) br_overdue_terms , u.mobile_num AS mobilenum ,u.id as user_id
				FROM borrows_repayment br  
				LEFT JOIN borrows b ON b.id = br.bo_id
				LEFT JOIN user_info u ON u.id = b.user_id
				WHERE br.br_is_repay=0  
				AND (UNIX_TIMESTAMP(br_time) + (86400*2) = UNIX_TIMESTAMP(DATE(NOW())) OR UNIX_TIMESTAMP(br_time) + (86400*15) = UNIX_TIMESTAMP(DATE(NOW())) OR UNIX_TIMESTAMP(br_time) + (86400*27) = UNIX_TIMESTAMP(DATE(NOW()))) 
				AND b.p_id IN (77,83,88,94)
				GROUP BY b.id HAVING MAX(br_overdue_terms) = 1

SELECT * from user_hand_signal ORDER BY id desc limit 100;

SHOW VARIABLES LIKE 'character_set_%';

SELECT * FROM unifi_user_info_activity 

SELECT * from bank_code ORDER BY id desc LIMIT 100
SELECT * from bank WHERE name like "%上海%" ORDER BY id desc LIMIT 1000;

SELECT * from region where code>=310000 LIMIT 10000

SELECT * from user_hand_signal ORDER BY id desc limit 1000;
SELECT * from user_info WHERE mobile_num=1111111111
SELECT * from user_info WHERE id=6833346
SELECT * from user_hand_signal WHERE user_id=86545388  #zengliang

select id,user_id,uhs_password from user_hand_signal WHERE user_id =86545388

SELECT * FROM user_hand_signal WHERE user_id=76598
SELECT * from user_info WHERE id=76598;

SELECT * from borrows ORDER BY id desc LIMIT 100;
SELECT * from borrows_archive ORDER BY  id desc LIMIT 100;

SELECT * from finance_account WHERE user_id=86545532

SELECT * from user_bankcard_info ORDER BY id desc limit 100;

SELECT * from user_approach_info ORDER BY id desc limit 100;
SELECT channel_id from user_approach_info WHERE user_id=? and channel_id=1250

SELECT * from borrows WHERE id=344653;
SELECT * from user_info WHERE id=86545606;

SELECT * from borrows_repayment ORDER BY id desc limit 100;

SELECT * from online_recharge ORDER BY id desc limit 100   WHERE id=

SELECT * from user_approach_info WHERE user_id=86545606

SELECT * from america_school ORDER BY id desc limit 100;

SELECT * FROM america_region ORDER BY id desc limit 100;

SELECT * from email

SELECT * from user_info WHERE id=86545626;
SELECT * from borrows WHERE user_id=86545626;

SELECT * from 

SELECT count(br_is_repay) FROM borrows_repayment WHERE bo_id=? AND user_id=? AND br_is_repay =0


SELECT * from user_info WHERE id=86545626
SELECT * from user_info WHERE mobile_num=8663048010
SELECT * from borrows WHERE user_id=86545626
SELECT * from borrows_repayment WHERE user_id=86545626
SELECT * from finance_account WHERE user_id=86545626
SELECT * from finance_log WHERE user_id=86545626 ORDER BY id desc 

SELECT * from user_bankcard_auth WHERE user_id=86545626;

SELECT * from user_bankcard_info WHERE id=1125216;
SELECT * from user_info WHERE id=86545519

SELECT * from  user_approach_info WHERE user_id=86545626

SELECT * from  user_approach_info WHERE user_id=86545630


SELECT * from bank ORDER BY id desc LIMIT 100;

SELECT * from borrows_dunning_contact WHERE user_id=86545671 ORDER BY id desc LIMIT 100;
SELECT * from user_info where id=86545671;
SELECT * from finance_log WHERE  user_id=86545626

SELECT * from online_recharge WHERE  user_id=86545626
SELECT 

SELECT * from  finance_role ORDER BY id desc limit 20;

SELECT @r:=0,t.* FROM user_weixin_bind t LIMIT 10
						
SELECT * from user_weixin_bind ORDER BY id desc limit 100;

SELECT * from finance_account WHERE role_id=52 ORDER BY id desc limit 100;
SELECT * from data_dict WHERE data_type_code='Mg.MXD.ios.history.version' ORDER BY id desc limit 100;

INSERT INTO `data_dict` VALUES (834, 'Mg.MXD.IOS.history.version', ' 美国名校贷ios版本号', NULL, '1.0.3', NULL, '美国名校贷ios版本号', 1, 1, '2016-4-25 16:31:33', '2016-4-25 16:31:33');

SELECT * from data_dict WHERE data_type_code='Mg.MXD.Android.history.version' ORDER BY id desc limit 100;

SELECT * from user_info WHERE id=86545654

SELECT * from user_bankcard_auth WHERE user_id=86545654

SELECT * from user_sign_record 

 select id, user_id, name, value, expand, state, call_state, kind, groupkwd, create_time, update_time, creater, updater, version from borrows_dunning_contact where id = ? and user_id = ? and name = ? 


 SELECT count(0) FROM user_file_audit_info ufai
				LEFT JOIN user_file_info ufi ON ufi.file_audit_id = ufai.id
				WHERE ufai.user_id=86545678 AND ufai.file_type_id =51

SELECT * from user_info WHERE user_name='caochenglin';

SELECT * from user_file_type_info ORDER BY id desc limit 100;

SELECT * from america_school ORDER BY id desc limit 100;

SELECT * from data_dict ORDER BY id desc limit 1000;

SELECT * from products_config WHERE p_id=94 ORDER BY id desc limit 100;

SELECT
					t1.id AS id_level_one,
					t1.content AS content_one,
					t2.content AS content_two,
					t2.id AS id_level_two,
					t3.content AS content_three,
					t3.id AS id_level_three
				FROM
					mxd_refuse_reason_template t1
				INNER JOIN mxd_refuse_reason_template t2 ON t1.id = t2.parent_id
				INNER JOIN mxd_refuse_reason_template t3 ON t2.id = t3.parent_id
				WHERE
					t1.id =1

SELECT * from mxd_refuse_reason_template 

INSERT INTO mxd_refuse_reason_template VALUES (64, 3, '请同学完成芝麻信用授权之后再次提交', 54, 1, 1, '2016-4-25 14:43:00', '2016-4-25 14:43:00');

SELECT * from user_info WHERE mobile_num='2120001001'

SELECT * from borrows WHERE user_id=86545834;

D051D170235C6682E334E6A5ABD8EBDB

SELECT * from user_info WHERE id=86545834;
SELECT * from user_bankcard_auth WHERE user_id=86545834
SELECT * from user_bankcard_info WHERE user_id=86545834

SELECT * from admin limit 1000;

SELECT * from channel ORDER BY id desc limit 2000;

SELECT * from site_flash_setting ORDER BY id desc limit 100;

SELECT * from user_info WHERE id=3208282
SELECT * from borrows_prepare WHERE user_id=3208282   556078
SELECT * from borrows_raise WHERE bp_id=556078

SELECT * from user_hkconpon  ORDER BY id desc limit 100;
SELECT * from user_InterestrateCut   ORDER BY id desc limit 100;
SELECT * from user_approach_info ORDER BY id desc limit 100;

SELECT * from data_dict ORDER BY id desc 

SELECT * from user_action_log ORDER BY id desc limit 100;

SELECT * from user_education_auth_log ORDER BY id desc WHERE user_id=86545900 

SELECT * from user_hkconpon_template  ORDER BY id desc;
SELECT * from InterestrateCut_template ORDER BY id desc 

SELECT * from user_info ORDER BY id desc limit 100;

SELECT * from borrows_dunning_contact WHERE user_id=86545671

select distinct (bo.id) from borrows_raise br
inner join borrows bo on bo.bp_id = br.bp_id
where exists(select * from borrows_bidding bd where bd.bo_id = bo.id)
and bo.bo_is_success = 3 or bo.bo_is_finish = 2 or bo.bo_is_success  =2  and br.bo_id is not null

SELECT * from borrows_bidding WHERE bo_id=344479

SELECT * from user_info   WHERE id=3207346 ORDER BY id desc limit 100

SELECT academy  from user_student_info ORDER BY id desc limit 100;

SELECT * from  site_flash_setting ORDER BY id desc limit 100;

ALTER TABLE site_flash_setting ADD  `am_id` bigint(20) DEFAULT NULL COMMENT '渠道号';

SELECT * from gab_water_photo_log 

SELECT * from user_info ORDER BY id desc limit 1000;


SELECT * from user_sign_record ORDER BY id desc limit 100;     #86546024

SELECT * from user_info WHERE id=7208792;
SELECT * from user_bankcard_auth WHERE user_id=7208792;
SELECT * from user_bankcard_info WHERE user_id=7208792;


SELECT
				  b.id AS bo_id,
				  b.user_id AS m_id,
				  bo_can_success,
				  bo_is_success,
				  bd.va_id
				FROM borrows b
				LEFT JOIN borrows_bidding bd ON b.id = bd.bo_id
				WHERE b.bo_can_success = 3 AND b.bo_is_success = 0 AND (bd.va_id IS NULL 
				      OR bd.va_id <> 23665) AND b.bo_is_finish IN (0,1) and b.p_id not in (96)   #711708   129547  135248  #706716
				GROUP BY b.id
				ORDER BY b.bo_audit_time,b.id limit 85

SELECT * from borrows WHERE id=706716;
SELECT * from borrows_bidding WHERE bo_id=706716

SELECT * from finance_account WHERE user_id=7208792

SELECT * from withdraw_cash_alipay WHERE user_id=7208792

SELECT * from withdraw_cash_alipay ORDER BY id desc limit 100;

select ubi.* from user_bankcard_auth uba join user_bankcard_info ubi on 
 uba.bank_card_id = ubi.id where uba.auth_type = 6 and uba.auth_status = 1 and uba.user_id = 7208792
 and ubi.is_deleted = 0 order by ubi.is_default desc ,uba.auth_time desc

SELECT * from finance_account WHERE user_id=7208792


SELECT

SELECT * FROM user_alipay_info WHERE is_default=1 and is_deleted=0 and user_id=7208792

SELECT 
						 m.id as m_id,
						 m.id as user_id,
						 m.user_name as m_username,
	                     m.is_cheat as is_deception,
	                     m.real_name as realname,
	                     m.id_num as idnum,
	                     g.id as gf_id,
	                     g.price as gf_price,
	                     g.free as gf_withdrawal_price,
	                     g.create_time as gf_time,
	                     g.audit_state as gf_audit_state,
	                     g.qudao as gf_qudao,
	                     fa.balance,
	                     m.user_key as user_key,
	                     #g.bank_name  as gf_banks_cat,
	                     CASE WHEN b.name is NOT NULL THEN b.name  ELSE '支付宝' END as gf_banks_cat,
	                     m.is_cheat as is_deception,
	                     CASE WHEN ubi.bank_card_no is not NULL THEN ubi.bank_card_no ELSE uai.alipay_no END as gf_banks_account
	                     FROM  withdraw_cash g
	                     left join user_bankcard_info ubi on ubi.id = g.bank_id
	                     left join bank b on b.id=ubi.bank_code
											 left join user_alipay_info uai ON g.bank_id=uai.id
				INNER JOIN user_info m ON m.id =  g.user_id
				left join finance_account fa on fa.owner_id=m.id and fa.role_id=7
				where 1=1   AND g.audit_state =3  AND g.create_time<='2016-07-21 10:38:57'
				ORDER BY g.create_time DESC



SELECT * from withdraw_cash WHERE user_id=7208792

SELECT * from withdraw_cash wc LEFT JOIN user_alipay_info uai ON wc.bank_id=uai.id WHERE wc.id=1079271

SELECT * from site_flash_setting ORDER BY id desc limit 100;

select id, enabled, is_login,link,name,path,title,position,sort,type,am_id,create_time,create_time from site_flash_setting where 1=1 and type=3 and am_id=1478 and position='H5LP_education' and enabled=1 order by id desc limit 5 


SELECT * from data_dict ORDER BY id desc limit 100;

INSERT INTO data_dict(data_type_code,data_type_name,data_no,data_value,param,remark,status,version,create_time,update_time) VALUES ('unifiPrice', 'UniFi小额贷最大借款金额', 3, '50000', NULL, 'UniFi小额贷最大借款金额', 1, 1, '2016-4-22 20:00:02', '2016-4-22 20:00:02');

DELETE FROM data_dict WHERE data_type_code='unifiPrice' and data_no=3 



SELECT * FROM text_template ORDER BY id desc limit 100;



