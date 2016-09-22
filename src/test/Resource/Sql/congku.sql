SELECT * from user_InterestrateCut ORDER BY id desc limit 10;

SELECT * from unifi_InterestrateCut ORDER BY id desc limit 100;


SELECT * from data_dict ORDER BY id desc
SELECT * from products_config WHERE p_id=97 ORDER BY id desc limit 100;

SELECT * from data_dict WHERE data_type_code='update_punish_java_switch' ORDER BY id desc limit 100;

SELECT * from user_info WHERE user_name='18968039_201'
SELECT * from user_bankcard_info WHERE user_id=8065278
SELECT * from withdraw_cash_alipay WHERE user_id=8065278
SELECT * from user_alipay_info WHERE user_id=8065278
SELECT * from  borrows WHERE user_id=10960952
SELECT * from admin_work_remark WHERE remark_aim='10960952'
SELECT * from borrows_archive WHERE bo_id=1242248
UPDATE user_alipay_info SET alipay_no='13520686750' WHERE id=4008010

SELECT * from user_info WHERE user_name='61488651_1'

SELECT * from user_alipay_info WHERE user_id=11161553

UPDATE user_alipay_info SET alipay_no=1-6148865163  WHERE id=4008151 


SELECT
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

SELECT * from user_info WHERE user_name='fffff179'
SELECT * from borrows WHERE user_id=8608367
SELECT * from borrows_repayment WHERE bo_id=1158358
SELECT * from kuaiq_orders WHERE user_id=8608367

SELECT * from borrows WHERE user_id=432810  #1148872
SELECT * from borrows_repayment WHERE      user_id=432810 and bo_id=1148872
SELECT * from site_flash_setting  ORDER BY id desc limit 200;

SELECT * from user_info WHERE mobile_num='6035019685'
SELECT * from user_student_info WHERE user_id=11043845
SELECT * from withdraw_cash_alipay WHERE user_id=432810

SELECT * from user_bankcard_info WHERE mobile_num=8325384


SELECT * from site_flash_setting WHERE position='H5LP_free_new' ORDER BY id desc limit 100;






SELECT * from user_student_info usi INNER JOIN borrows b ON b.user_id=usi.user_id 
inner JOIN borrows_archive  bo ON b.id=bo.bo_id
WHERE usi.valid_education is not null and b.id is not null and b.bo_is_success=0  and bo.is_audit=3 order by usi.id desc limit 100;


SELECT * from borrows_archive ba INNER JOIN borrows b on b.id=ba.bo_id INNER JOIN user_student_info usi ON usi.user_id=b.user_id WHERE ba.is_audit=3 
and usi.valid_education is not null ORDER BY ba.id desc  limit 100;

SELECT * from youqian_cooperation_log ORDER BY id desc limit 10000;


SELECT * from borrows WHERE user_id=3369782
SELECT * from user_info WHERE id=8133336
SELECT * from unifi_InterestrateCut 

SELECT * from borrows_prepare WHERE user_id=8526624


SELECT * from data_dict WHERE data_type_code like '%unifi%' ORDER BY id desc limit 100;


SELECT * from user_info WHERE user_name='18827559_3'
SELECT * from borrows_archive WHERE bo_id=1145013

SELECT * from mxd_refuse_reason_template WHERE parent_id=0


SELECT * from user_info WHERE user_name='18659305_1'  
SELECT * from borrows WHERE user_id=4132754   
SELECT * from borrows_prepare WHERE user_id=4132754   
SELECT * from finance_account WHERE user_id=8050935 
SELECT * from borrows_repayment WHERE user_id=8050935


SELECT * from user_info WHERE mobile_num='13871230493'     
SELECT * from finance_account WHERE user_id=8051377 
SELECT * from borrows_repayment WHERE user_id=8051377


SELECT * from user_info WHERE mobile_num='15555606518' s
SELECT * from america_school ORDER BY id desc limit 100;    
SELECT * from finance_account WHERE user_id=8050543 
SELECT * from borrows_repayment WHERE user_id=8050543

SELECT * from user_info WHERE user_name='m18199277273'
SELECT * from borrows WHERE user_id=8462293; #6217004550003665522   #295003
SELECT * from kuaiq_orders WHERE user_id=1338820
SELECT * from kuaiq_recharge_logs WHERE user_id=1338820


SELECT * from finance_account WHERE user_id=1338820
SELECT * FROM user_bankcard_info WHERE user_id=1338820    6217005522

SELECT * from user_bankcard_info WHERE id=2352845

SELECT bi.bank_card_no, b.name, (SELECT NAME FROM region WHERE CODE = bi.province_code) AS banks_province,
             (SELECT NAME FROM regioeen WHERE CODE = bi.city_code) AS banks_city  FROM  user_bankcard_info bi, bank b  WHERE bi.bank_code=b.id AND bi.id=295003

#6221889020001548882

SELECT * from user_info WHERE PASSWORD is null ORDER BY id desc limit 100;

SELECT * from user_bankcard_info WHERE bank_card_no='6215590609000317737'
SELECT * from user_info WHERE mobile_num='8600001144'
SELECT * from borrows WHERE user_id=8203624

SELECT * from  borrows_repayment WHERE bo_id=1158981

SELECT * from user_info WHERE mobile_num=6468084422
SELECT * from user_action_log  WHERE user_id=9143631 ORDER BY id desc limit 100;

SELECT * FROM borrows_prepare WHERE user_id=8482925  ORDER BY id desc limit 1

SELECT * from finance_account   WHERE user_id=8482925

SELECT * from user_bankcard_auth   WHERE user_id=8482925;
SELECT * from user_bankcard_info   WHERE user_id=8482925

SELECT * from borrows WHERE user_id=8043793
SELECT * from borrows_archive WHERE bo_id=1172861

SELECT * from user_info WHERE user_name='15501887_3'

SELECT COUNT(0) FROM borrows WHERE user_id=8938970 AND bo_is_success = 3 AND bo_audit_time>DATE_SUB(NOW(),INTERVAL 30 DAY)

SELECT COUNT(0) FROM borrows_prepare WHERE user_id=8938970
					AND bp_is_success = 3 AND bp_publish_time>DATE_SUB(NOW(),INTERVAL 30 DAY)

SELECT * from borrows_prepare WHERE user_id=8938970 ORDER BY id desc limit 100;

SELECT * from user_info WHERE  user_name='18250231_4'
SELECT * from withdraw_cash WHERE user_id=8482925
SELECT * from kuaiq_orders WHERE user_id=955227

SELECT * from finance_log WHERE user_id=955227

SELECT * from system_sms_log WHERE mobilenum='3124014514'


SELECT * from borrows_dunning_contact ORDER BY id desc limit 1000;




SELECT DATE_FORMAT(create_time,'%Y-%m-%d') days,COUNT(1) COUNT FROM borrows  WHERE p_id=87 GROUP BY days ;
SELECT DATE_FORMAT(create_time,'%Y-%m-%d') days,COUNT(1) COUNT FROM borrows_prepare  WHERE p_id=87 GROUP BY days ;


SELECT * from user_info WHERE id=10573257
SELECT * FROM borrows WHERE id=1200012      # 994757    10573257
SELECT * from borrows_bidding WHERE bo_id=1200012
SELECT * from user_bankcard_info WHERE user_id=10573257
SELECT * FROM borrows_archive WHERE bo_id=1200012      # 994757
SELECT * from finance_account WHERE user_id=10573257

select * from user_bankcard_info where user_id = 10573257 and is_deleted = 0 order by is_default desc,id

SELECT * FROM text_template ORDER BY id desc limit 100;

SELECT * from user_InterestrateCut WHERE code like "%unifi%" ORDER BY id desc LIMIT 100;

SELECT
	ui.real_name,
	ui.mobile_num,
	uai.channel_id,
	uai.landing_page
FROM
	user_info ui
INNER JOIN user_approach_info uai ON ui.id = uai.user_id
WHERE 
	uai.landing_page LIKE "%美国%" and  uai.channel_id=9020

SELECT * from borrows WHERE id in(1200012,1206437);
SELECT SUM(price) from borrows_bidding WHERE bo_id=1200012              #################################3908826
SELECT * from borrows_bidding WHERE bo_id in(1206437) and user_id in(1184726)

SELECT * from borrows WHERE p_id=94 and bo_is_success=1 and bo_can_success=3

SELECT * from user_info WHERE user_name='18095474_1'
SELECT * from user_bankcard_info WHERE user_id=10573257
SELECT * from user_bankcard_auth WHERE user_id=10573257
SELECT * from borrows WHERE user_id=10690771
SELECT * from admin_work_remark WHERE bo_id=1206284
SELECT * from mxd_refuse_reason_template WHERE id in(164,161,106,191,166,164,191)
SELECT * from mxd_refuse_reason_template WHERE id in(78,79)
SELECT * from system_sms_log WHERE ssl_type='validation_mobile_mxd_usa'  ORDER BY id desc limit 100;
SELECT * from sms_task_detail WHERE task_id=354

SELECT * from sms_task ORDER BY id desc limit 100;


SELECT * from text_template ORDER BY id desc limit 100;

SELECT * from data_dict WHERE data_type_code LIKe "%unifi%"

SELECT * from user_info WHERE mobile_num='8663049003'
SELECT * from borrows WHERE user_id=9597820
SELECT * from borrows_archive WHERE bo_id=1213124

SELECT * from system_sms_log WHERE mobilenum='6124993582'



SELECT * from gab_water_photo_log  WHERE user_id=7845517

SELECT * from user_file_info WHERE file_audit_id=2746079


SELECT * from data_dict ORDER BY id desc limit 1000;

SELECT * from user_info WHERE mobile_num='8663049003'
SELECT * from user_student_info WHERE user_id=7154908
SELECT * from user_info WHERE id_num='21010619930630401x'
SELECT * FROM borrows_dunning_contact WHERE user_id=10401496

SELECT * from unifi_user_info_activity ORDER BY id desc limit 100;

SELECT * from user_weixin_bind ORDER BY id desc limit 1000;

SELECT * from site_flash_setting WHERE position='H5LP_simple_new' ORDER BY id desc limit 1000;
SELECT * from site_flash_setting WHERE position='H5LP_education' and type=1 ORDER BY id desc limit 1000;



SELECT
	ui.id,
	ui.real_name,
	ui.mobile_num,
	ui.create_time,
  b.bo_price
FROM
	unifi_InterestrateCut uin
inner JOIN user_info ui ON uin.user_id = ui.id
LEFT  JOIN borrows b ON ui.id=b.user_id
WHERE
	uin.user_id != 0
AND uin.channel_id = 9020 AND b.bo_is_success is not null;


SELECT
	ui.id,
	ui.real_name,
	ui.mobile_num,
	ui.create_time
FROM
	unifi_InterestrateCut uin
inner JOIN user_info ui ON uin.user_id = ui.id
WHERE
	uin.user_id != 0
AND uin.channel_id = 9020

SELECT * from user_info WHERE mobile_num='6609092048'

SELECT * from finance_account WHERE user_id=10573257

SELECT * from finance_log WHERE user_id=9393651

SELECT * from system_sms_log WHERE mobilenum='2064767019' ORDER BY id desc limit 100;

SELECT * from unifi_InterestrateCut WHERE user_id=10941723 ORDER BY id desc limit 100;

SELECT * from user_info WHERE mobile_num='5152319603'


SELECT * from user_bankcard_auth WHERE user_id=10666299;
SELECT * from user_bankcard_info WHERE user_id=10666299

select ubi.* from user_bankcard_auth uba join  user_bankcard_info ubi on uba.bank_card_id = ubi.id
                    where ((uba.auth_type = 2 and uba.auth_status = 1) or (uba.auth_type = 5 and uba.auth_status = 1) or (uba.auth_type = 1 and uba.auth_status = 1)) and uba.user_id = 10666299 and ubi.is_deleted = 0 order by uba.auth_time desc



SELECT * from borrows_dunning_contact WHERE user_id=10401496 ORDER BY id desc limit 100;

SELECT * from user_info WHERE user_name='ww1996'
SELECT * from user_bankcard_info WHERE user_id=1183355
SELECT * from borrows WHERE user_id=1183355
SELECT * from finance_log WHERE user_id=1183355


select * from user_bankcard_info where user_id = 1183355 and is_deleted = 0 order by is_default desc,id 

SELECT * from user_info WHERE mobile_num='6035019685'
SELECT * from unifi_InterestrateCut WHERE user_id=10941742
SELECT * from borrows_bidding WHERE bo_id=1235094
SELECT * from borrows WHERE user_id=10940232


UPDATE unifi_InterestrateCut SET mobile_num='3129823066_1'  WHERE id=12233


SELECT * from user_info WHERE user_name='17865622_206'

SELECT * from borrows WHERE user_id=10940232
SELECT * FROM borrows_bidding WHERE bo_id=1235444

SELECT COUNT(1) as a,bo_id,create_time from borrows_bidding GROUP BY bo_id HAVING a>200 ORDER BY id desc

SELECT * from borrows WHERE p_id=97 ORDER BY id desc limit 100;

SELECT * from user_info WHERE mobile_num='2534578101'
SELECT * from borrows WHERE user_id=11043845
SELECT * from borrows_bidding WHERE bo_id=1235094
SELECT * from borrows_repayment WHERE bo_id=1235444
SELECT * from finance_account WHERE user_id=10573257

SELECT * from borrows_prepare WHERE user_id= 11043845
SELECT * from user_approach_info WHERE user_id=11043845


SELECT * from user_alipay_info WHERE user_id=8361256
SELECT * from user_bankcard_info WHERE user_id=8361256
SELECT * from withdraw_cash WHERE user_id=8361256

SELECT * from borrows WHERE p_id in (94,97) and create_time BETWEEN '2016-09-13 00:00:00' AND '2016-09-14 00:00:59'

SELECT * from user_file_audit_info WHERE user_id=1113175


SELECT * from user_weixin_bind ORDER BY id desc LIMIT 100;


SELECT * from borrows WHERE p_id=94 order by id desc limit 100;

SELECT * from kuaiq_orders WHERE user_id=8361256

SELECT * from user_info WHERE mobile_num='9493446928'

SELECT * from system_sms_log WHERE mobilenum='9493446928'

SELECT * from system_sms_log WHERE  mobilenum='9493446928'



