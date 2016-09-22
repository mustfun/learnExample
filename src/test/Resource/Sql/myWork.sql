SELECT ui.user_name,gl.* from gab_water_photo_log gl LEFT JOIN user_info ui ON gl.user_id=ui.id WHERE code!=0;
SELECT count(1) from gab_water_photo_log WHERE code=0 or code=-1202;
SELECT * from gab_water_photo_log WHERE code in (0,-1202,-1203,-1204)  GROUP BY user_id  HAVING count(1)>1 ORDER BY id asc;  #215  #217

SELECT * from gab_water_photo_log WHERE user_id in (1161595,6783837,5223802,1053982,1321771,6851560,6848375,6897388,6932918);

SELECT * from gab_water_photo_log ORDER BY id desc limit 1000;
SELECT * from gab_water_photo_log WHERE user_id=6919764                            ####继续执行看看

SELECT * from borrows_prepare WHERE user_id=6703473 ORDER BY id desc;

SELECT * from user_info WHERE mobile_num=6192617253;
SELECT * from user_student_info WHERE user_id=8357909

SELECT * from user_info WHERE user_name='18975353_1'
SELECT * from borrows WHERE user_id=6919764;
SELECT * from borrows_prepare WHERE user_id=6919764
SELECT * from borrows_archive WHERE bo_id=592379

SELECT * from borrows_prepare WHERE user_id=1161595;
SELECT * from user_info WHERE mobile_num='13641683287'
SELECT * from borrows WHERE user_id=6966458;
SELECT * from borrows_archive WHERE bo_id=6966458

SELECT * from youqian_cooperation_log ORDER BY id desc limit 100;

SELECT * from user_info WHERE user_name='15586999_201'
SELECT * from borrows WHERE user_id=907405;
SELECT * from borrows_prepare WHERE user_id=907405;

SELECT * from user_info WHERE id=5475112;
SELECT * from borrows_prepare WHERE user_id=1415181;

SELECT * from borrows WHERE user_id=1415181;
SELECT * from borrows WHERE user_id=3045484;

SELECT * from borrows_repayment WHERE user_id=8050935



SELECT * from user_info WHERE mobile_num=2604079364


SELECT * from youqian_cooperation_log WHERE idfa='5A58EF1E-EEF2-478D-94EE-709B98407589'
SELECT * from youqian_cooperation_log  ORDER BY id desc limit 5000;

SELECT * from youqian_cooperation_log WHERE ip='223.74.134.181'
SELECT *,count(1) from youqian_cooperation_log WHERE create_time  BETWEEN '2016-07-10 00:00:00' AND '2016-07-11 00:00:00' GROUP BY ip HAVING COUNT(ip)>100 limit 10;
SELECT *,count(1) from youqian_cooperation_log  GROUP BY ip HAVING COUNT(ip)>100 
SELECT *,count(1) from youqian_cooperation_log  GROUP BY idfa HAVING COUNT(idfa)>2 


select 
		idfa
	from youqian_cooperation_log WHERE is_success=1
		and status=0
		and idfa in('684149E3-D3DB-4A97-A934-B5EE3665799B')

SELECT * from user_info WHERE is_cheat=1 ORDER BY id desc limit 100;

SELECT * from borrows WHERE user_id=6898604;
SELECT * from gab_water_photo_log WHERE user_id=6898604;

SELECT * from user_htsb_info WHERE user_id=6898604;

SELECT * from user_htsb_info  GROUP BY user_id  HAVING count(1)>1 ORDER BY id asc;

SELECT * from borrows WHERE id=619286;

SELECT * from user_sign_record ORDER BY id desc limit 100;


SELECT * from system_sms_log WHERE ssl_type='validation_mobile_mxd_usa_activity' ORDER BY id desc LIMIT 1000;

SELECT * from sms_task ORDER BY id

SELECT * from user_info WHERE mobile_num=4582126666


SELECT * from recharge_log WHERE user_id=7155831 ORDER BY id desc limit 100;

SELECT * from user_info WHERE id=7155831

SELECT * from pay_record

SELECT * from bill_wechat_pre WHERE user_id=7154908 ORDER BY id desc limit 100;

SELECT * from user_info WHERE id=7152827

SELECT * from borrows WHERE id=685939

SELECT count(0) FROM user_info WHERE id=7152827 AND pay_password='ecf136748e1cf6eba070e7f56a53145f'

select id bo_id from borrows b where b.user_id = 7152827 and b.id = 685939



select * from borrows_repayment where br_time < 2016-05-25 and bo_id= 685939 and br_is_repay = 0

SELECT count(id) FROM borrows_repayment WHERE bo_id=685939 AND user_id=7152827 and (br_time < ? OR (br_time>= ? AND br_is_repay=1))

SELECT * from user_info WHERE mobile_num=3234281762

SELECT * from borrows WHERE id=697702;
SELECT * from text_template WHERE tt_kwd ='loan_credit_protocol_student'

SELECT * from unifi_user_info_activity  WHERE  activityId='f0b67b9c839b6470' and mobile_num='4158679391'
SELECT * from unifi_user_info_activity WHERE fromActivityId='f0b67b9c839b6470'

SELECT * from borrows_dunning_contact WHere  user_id=7191348 ORDER BY id desc limit 1000;

SELECT * from user_info WHERE user_name='caochenglin';
SELECT bo_guid,bo_agree_generated,bo_extno,b.* from borrows b where user_id=3309270

 select * from user_info where id = 7153973
SELECT * from data_dict WHERE data_type_code='Mg.MXD.ios.history.version' ORDER BY id desc limit 100;

SELECT * from borrows WHERE user_id=7208792;

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
					t1.id =3







SELECT * from user_info WHERE id='1026831'
SELECT * from borrows WHERE user_id='1026831'

SELECT * from finance_account WHERE user_id=1026831
SELECT * from finance_log WHERE user_id=1026831 ORDER BY id desc 

SELECT * from borrows  WHERE bo_all_repayed=0 and bo_is_success=1  and p_id<>83 and create_time>'2016-5-1 20:41:40' AND create_time<'2016-5-4 20:41:40'  GROUP BY user_id,bo_all_repayed HAVING count(bo_all_repayed)>=2


SELECT b.user_id from borrows_raise br INNER JOIN borrows b ON br.user_id=b.user_id WHERE  b.bo_all_repayed=0 and b.bo_is_success=1 and b.bo_can_success=3  and b.p_id<>83 and b.create_time>'2016-05-03 18:46:11' and b.create_time<'2016-05-05 11:46:11'


SELECT user_id from borrows b WHERE b.user_id in (
SELECT br.user_id from borrows_raise br INNER JOIN borrows b ON br.user_id=b.user_id GROUP BY br.user_id
) and b.bo_all_repayed=0 and b.bo_is_success=1 and b.bo_can_success=3  GROUP BY b.user_id  HAVING count(1)>1


SELECT real_name,user_name,id_num,mobile_num,user_id,b.id,b.create_time,b.update_time from user_info uf INNER JOIN borrows b  on uf.id=b.user_id WHERE uf.id in(
855698,
894659,
1021410,
1026831,
1117392,
1161165,
1248898,
1319411,
1343528,
1369001,
1382627,
3183067,
3296003,
3371002,
3435817,
3477880,
3488059,
3489353,
3526668,
4876803,
5314280,
6174747
)  GROUP BY b.user_id ORDER BY b.id DESC 


SELECT bo_price,bo_finish_price,bo_sign_result,bo_sign_remark,bo_is_success,bo_can_success,bo_all_repayed,id,bp_id from  borrows WHERE user_id='3296003';


SELECT * from borrows_raise WHERE user_id='3296003';

SELECT * from borrows WHERE user_id=957006

SELECT * from user_info WHERE user_name='13639518_11'


SELECT * from user_info WHERE user_name='18629549_1'


SELECT user_id from borrows b WHERE b.user_id in (
SELECT br.user_id from borrows_raise br INNER JOIN borrows b ON br.user_id=b.user_id GROUP BY br.user_id
) and b.bo_all_repayed=0 and b.bo_is_success=1 and b.bo_can_success=3 GROUP BY b.user_id  HAVING count(1)>1


SELECT user_id from borrows b WHERE b.user_id in (
SELECT br.user_id from borrows_raise br INNER JOIN borrows b ON br.user_id=b.user_id GROUP BY br.user_id
) and b.bo_all_repayed=0 and b.bo_is_success=0   GROUP BY b.user_id  HAVING count(1)>1

SELECT * from system_mail_log WHERE mail_template_id=40   ORDER BY id desc limit 1000;

SELECT * from  system_mail_template ORDER BY id desc limit 100;

SELECT * from america_school WHERE name_en like "%Missouri University of Science%" ORDER BY id desc limit 2000;
SELECT * from data_dict ORDER BY id desc limit 100;
SELECT * from online_recharge WHERE user_id=7291732 ORDER BY id desc limit 100;

SELECT * from system_sms_log ORDER BY id desc limit 100;


SELECT * from user_info WHERE mobile_num='6266884219'  #7243673

SELECT * from borrows_dunning_contact WHERE user_id=86545671
SELECT * from user_info WHERE id=86545672

select distinct (bo.id) from borrows_raise br
inner join borrows bo on bo.bp_id = br.bp_id
where exists(select * from borrows_bidding bd where bd.bo_id = bo.id)
and (bo.bo_is_success = 3 or bo.bo_is_finish = 2 or bo.bo_is_success  =2 )

SELECT * from system_sms_log ORDER BY id desc limit 100;

SELECT * from borrows_repayment WHERE user_id=7155831

SELECT academy  from user_student_info ORDER BY id desc limit 100;

SELECT count(1) from gab_water_photo_log 

SELECT * from bill_wechat_pre ORDER BY id desc limit 1000;

select id, merchant_id, merchant_name,merchant_qq,merchant_company_name,merchant_company_address,merchant_bank_code,merchant_login_name,open_bank_code,channel_id,refund_max_days, is_valid, create_time, update_time, creater, 
    updater, version
    from merchant
    where merchant_id = 


select * from system_sms_log order by id desc limit 1000;

SELECT usi.*,ui.user_name,ui.id_num,ui.real_name,ui.mobile_num FROM user_info ui LEFT JOIN user_student_info usi ON ui.id=usi.user_id WHERE ui.id=6898604

select id, user_key, user_name, password, pay_password, mobile_num, id_num, user_type, 
    real_name, gender, email, is_mobile, is_card, card_needcheck, is_education, is_student, 
    is_email, is_photo, is_dunning, is_cheat, status, is_special, customer_servicer, 
    finance_advisor, finance_advisor_manager, recommender, pc_id, is_sync, is_bbs_sync, 
    nono_id_checked, register_time, create_time, update_time, creater, updater, version
    from user_info
    where id = '0' and status='1';

select * from tb_pay_order;

show variables like 'table_lock%'

select * from data_dict
    where data_type_code = 'csyyPlanPersonalLimit'

SELECT * from user_info WHERE mobile_num='15921929404'
SELECT * from user_file_info WHERE file_audit_id=2258695
SELECT * from user_file_audit_info WHERE user_id=7373640


SELECT * from user_info WHERE user_name='52033303_1'

SELECT * from admin_work_remark WHERE remark_aim=7367730;

select *
    from borrows_archive
    where 1=1 and bo_id=766191

SELECT * from borrows where user_id=7367730

SELECT * from data_dict WHERE data_type_code like "unifi%" ORDER BY id desc limit 1000;

select 
		id,
		p_id,
		user_id,
		create_time
	from borrows where
			(bo_is_success=1
			or bo_is_finish = 2
			or bo_is_success  = 3)
		and user_id=7367730
		order by id desc
		limit 1

SELECT * from user_info WHERE mobile_num='18663041105'
SELECT * from system_sms_log WHERE mobilenum=18663041105 ORDER BY id desc limit 100;

SELECT * from channel WHERE id=1680

SELECT * FROM user_approach_info WHERE landing_page='美国名校贷微信中转页面' ORDER BY id desc limit 100; 



SELECT * from america_school ORDER BY id desc limit 100;


SELECT * from user_sign_record ORDER BY id desc limit 1000;



SELECT * from user_info WHERE id=2008217

SELECT * from user_info WHERE user_name='13636024_2';  #3769743

SELECT * FROM borrows WHERE user_id=3769743

SELECT * FROM borrows_prepare WHERE user_id=3769743

select ifnull(age,0) from user_info_detail
        where user_id = 3769743

SELECT * from user_info ORDER BY id desc limit 100;

SELECT * from channel ORDER BY id desc limit 1000;
SELECT * from user_approach_info ORDER BY id desc LIMIT 1000;

SELECT * from user_file_type_info ORDER BY id desc limit 100;

SELECT * from user_file_audit_info ORDER BY id desc limit 100;

SELECT * from user_info WHERE id=7805697 ORDER BY id desc limit 100


SELECT * from user_info WHERE  mobile_num='13238669075'

SELECT * from user_sign_record ORDER BY id desc 

SELECT * from user_info WHERE mobile_num='6263905928'


SELECT * from mxd_refuse_reason_template 

SELECT ui.user_id,ui.mobile_num,uf.real_name,ui.bp_id,ui.grant_time,ui.create_time,ui.use_time,ui.channel_id,b.id,b.bo_is_success from  unifi_InterestrateCut ui
LEFT JOIN borrows b ON ui.bp_id=b.bp_id left JOIN user_info uf on b.user_id=uf.id WHERE ui.create_time BETWEEN '2016-09-14 00:00:00' AND '2016-09-19 00:00:00'

SELECT ui.user_id,ui.mobile_num,ui.bp_id,ui.grant_time,ui.use_time,ui.channel_id,b.id,b.bo_is_success from  unifi_InterestrateCut ui
LEFT JOIN borrows b ON ui.bp_id=b.bp_id WHERE ui.bp_id = 0


SELECT * from unifi_InterestrateCut ORDER BY id desc limit 1000;

SELECT * from user_info WHERE id=8027241

SELECT * from user_file_audit_info WHERE user_id=8024526

SELECT * from user_info WHERE mobile_num='2058873608'


select uba.auth_type,ubi.* from user_bankcard_auth uba join  user_bankcard_info ubi on uba.bank_card_id = ubi.id
                    where ((uba.auth_type = 2 and uba.auth_status = 1) or (uba.auth_type = 5 and uba.auth_status = 1) or (uba.auth_type = 1 and uba.auth_status = 1)) and uba.user_id = 1126403 and ubi.is_deleted = 0 order by uba.auth_time desc

SELECT uba.*,ubi.bank_card_no from user_bankcard_auth uba join  user_bankcard_info ubi on uba.bank_card_id = ubi.id WHERE uba.user_id=1126403

SELECT * from withdraw_cash WHERE user_id=1126403     #     6228430219600731670

SELECT * from borrows WHERE user_id=1126403
SELECT * from user_bankcard_info WHERE user_id=1126403


SELECT * from  user_InterestrateCut ORDER BY id desc limit 1000;

SELECT * from user_info WHERE user_name='54160287_1'



SELECT * from bank WHERE name LIKE "%支付宝%" ORDER BY id desc limit 1000;

SELECT * from user_info WHERE user_name='delara221'

SELECT * from user_student_info WHERE user_id=8119141

UPDATE user_student_info SET academy='成都文理学院' WHERE user_id=8119141

SELECT * from user_info WHERE mobile_num='6266884219'
SELECT * from user_info WHERE user_id=
SELECT * from user_student_info WHERE user_id=1097020

SELECT * from user_action_log WHERE user_id=1190591

SELECT * from borrows_repayment WHERE user_id=1190591;   # 2016-01-13   2016-04-13

SELECT * from withdraw_cash WHERE user_id='8126041' ORDER BY id desc limit 100;  884482

SELECT * from kuaiq_orders WHERE user_id='8126041' ORDER BY id desc limit 100;
7235617
SELECT * from 


SELECT * from finance_log WHERE account_id='12532736' ORDER BY id  desc limit 100;


SELECT * from user_info WHERE mobile_num='8600003030'

SELECT * from finance_account WHERE user_id='8153237'

SELECT * FROM finance_log WHERE user_id="7243673";
SELECT * FROM finance_account WHERE user_id=7243673 
SELECT * FROM finance_account WHERE role_id=52 OR role_id=53
SELECT * FROM finance_role ORDER BY id desc 

SELECT * FROM db_nono_pay.tb_pay_record WHERE provider LIKE '%BAO%' ORDER BY id DESC LIMIT 1000;


SELECT * from user_info WHERE id=7875051

SELECT * from america_school ORDER BY id desc  limit 100;
SELECT * from america_region limit 100;

SELECT * from user_student_info WHERE user_id=7875051


SELECT * from borrows_dunning_contact WHERE name like '%学籍%' ORDER BY id desc limit 12;


SELECT * FROM user_info WHERE user_name='15103056_201'

SELECT * from borrows_dunning_contact WHERE user_id=7291732 and name ='国外地址'

SELECT * from user_info WHERE user_name='15598530_12'

SELECT * from borrows_prepare WHERE user_id=8125952

SELECT * from borrows WHERE user_id=8125952
SELECT * from borrows_archive WHERE bo_id=1064406


SELECT * FROM data_dict WHERE data_type_code='MgPro.MXD.IOS.history.version' ORDER BY id desc 

INSERT INTO data_dict VALUES (666, 'MgPro.MXD.IOS.history.version', ' 美国名校贷pro版ios版本号', NULL, '1.5.0', NULL, '美国名校贷Pro版ios版本号', 1, 1, '2016-8-5 16:31:33', '2016-8-5 16:31:33');



SELECT * from user_info WHERE mobile_num='18705184707'
SELECT * from borrows WHERE user_id=8153237
SELECT * from admin_work_remark WHERE remark_aim=8134079
SELECT * from admin_work_remark ORDER BY id desc limit 100;


SELECT * from system_sms_log WHERE mobilenum='15528158160' ORDER BY id desc limit 100;

SELECT * from withdraw_cash ORDER BY id desc limit 100;

SELECT * from user_info WHERE mobile_num='13920287505'

SELECT * from user_bankcard_info WHERE user_id='8131025'
SELECT * from user_bankcard_auth WHERE user_id='8131025'

SELECT * from user_info WHERE mobile_num='9499239568'

SELECT * from borrows_repayment WHERE user_id='7477455'

SELECT * from finance_log WHERE user_id=8153237 ORDER BY id desc 

SELECT ui.user_id,ui.mobile_num,ui.bp_id,ui.grant_time,ui.use_time,ui.channel_id,b.id,b.bo_is_success from  unifi_InterestrateCut ui
LEFT JOIN borrows b ON b.user_id=ui.user_id WHERE ui.channel_id=9009



SELECT *  from user_approach_info  WHERE user_id=8262102 ORDER BY id desc limit 100;

SELECT * from user_info WHERE id_num='120102199404081211'


SELECT * from borrows_dunning_contact WHERE user_id=8153237

SELECT * from user_info WHERE id=8153237

SELECT * from site_flash_setting ORDER BY id desc limit 100;


SELECT * from user_info WHERE id='8267589'

SELECT * from system_sms_log WHERE mobilenum='18611746250'

SELECT * from user_info WHERE user_name='13980239_1'

SELECT * from user_file_audit_info   WHERE user_id=8265790
SELECT * from user_file_audit_info WHERE file_type_id=49 ORDER BY id desc limit 100;

SELECT * from gab_water_photo_log WHERE user_id=8267589

SELECT * from user_info WHERE user_name='13920287_200'
SELECT * from user_info_detail WHERE user_id=8153237

SELECT * from user_info_detail ORDER BY id desc limit 1000;


SELECT * from user_info WHERE mobile_num='3128776915'

SELECT * from user_info WHERE id_num='620103199411260618'

SELECT * from borrows_prepare WHERE user_id=7373323

SELECT * from user_info WHERE user_name='94934469_1'
SELECT * from user_alipay_info WHERE user_id=7548292
SELECT * from withdraw_cash_alipay WHERE user_id=7548292

SELECT * from borrows_prepare WHERE  user_id=897341

SELECT count(1) from  gab_water_photo_log ui WHERE ui.create_time BETWEEN '2016-07-29 00:00:00' AND '2016-07-30 00:00:00' and code=0

SELECT DATE_FORMAT(create_time,'%Y-%m-%d') days,COUNT(1) COUNT FROM gab_water_photo_log  WHERE code=0 GROUP BY days ;

SELECT * from user_hkconpon_template WHERE id in(37,38,39)

SELECT * from borrows WHERE bo_expect_cat=1 ORDER BY id desc limit 10;
SELECT * from borrows_accept WHERE bo_id=815603
SELECT * from borrows_repayment WHERE user_id=7427198


SELECT * from unifi_InterestrateCut ORDER BY id desc limit 10000;


INSERT INTO data_dict VALUES (667, 'Mg.MXD.Android.history.version', ' 美国名校贷pro版android版本号', NULL, '1.5', NULL, '美国名校贷Pro版android版本号', 1, 1, '2016-8-5 16:31:33', '2016-8-5 16:31:33');

SELECT * from data_dict ORDER BY id desc limit 100;


SELECT * from products ORDER BY id desc limit 100;

SELECT
	ui.real_name,
	ui.mobile_num,
	uai.channel_id,
	uai.landing_page
FROM
	user_info ui
INNER JOIN user_approach_info uai ON ui.id = uai.user_id
WHERE
	uai.landing_page LIKE "%美国%" and uai.channel_id=9090


SELECT * from data_dict ORDER BY id desc limit 100;

SELECT * from data_dict WHERE data_type_code like '%history.version%'

SELECT * from withdraw_cash_alipay WHERE user_id=8065278

SELECT * from `finance_operation_relation` WHERE operation_keyword='tixian_fee' ORDER BY id desc limit 100;

SELECT * from user_info WHERE id=1010354



SELECT * from unifi_InterestrateCut  WHERE mobile_num='18389907786'

SELECT * from mxd_refuse_reason_template ORDER BY id desc limit 100;


INSERT INTO mxd_refuse_reason_template VALUES (317, 2, 'CR054支付宝账号异常', 180, 1, 1, '2016-4-25 14:43:00', '2016-4-25 14:43:00');
INSERT INTO mxd_refuse_reason_template VALUES (318, 3, '支付宝账号与用户真是姓名不匹配', 317, 1, 1, '2016-4-25 14:43:00', '2016-4-25 14:43:00');


INSERT INTO mxd_refuse_reason_template VALUES (319, 2, 'ZR054支付宝账号异常', 290, 1, 1, '2016-4-25 14:43:00', '2016-4-25 14:43:00');
INSERT INTO mxd_refuse_reason_template VALUES (320, 3, '支付宝账号与用户真是姓名不匹配', 319, 1, 1, '2016-4-25 14:43:00', '2016-4-25 14:43:00');


SELECT * from america_school ORDER BY id desc limit 100;
INSERT INTO `america_school` VALUES (8496, 'California state university northridge','加州州立大学北岭分校', 1311, '@csun.edu', 1, 'california', '2016-8-30 14:46:26', '2016-8-30 14:46:26');



SELECT * from america_region WHERE `level`=1 WHERE user_id=2186859

SELECT * from borrows_repayment WHERE bo_id=309883


SELECT * from user_info WHERE user_name='40231490_1'
SELECT * from borrows_dunning_contact WHERE user_id=8127594


INSERT INTO mxd_refuse_reason_template VALUES (321, 2, 'CR067：学籍信息系统账号与密码不匹配', 190, 1, 1, '2016-7-7 20:33:20', '2016-7-7 20:33:20');
INSERT INTO mxd_refuse_reason_template VALUES (322, 3, '学籍信息系统账号与密码存在不匹配的情况，请填写有效的学籍信息系统账号与密码。此过程只涉及系统自动校验，请放心填写', 321, 1, 1, '2016-7-7 20:33:20', '2016-7-7 20:33:20');


INSERT INTO mxd_refuse_reason_template VALUES (323, 2, 'ZR067：学籍信息系统账号与密码不匹配', 300, 1, 1, '2016-7-7 20:33:20', '2016-7-7 20:33:20');
INSERT INTO mxd_refuse_reason_template VALUES (324, 3, '学籍信息系统账号与密码存在不匹配的情况，请填写有效的学籍信息系统账号与密码。此过程只涉及系统自动校验，请放心填写', 323, 1, 1, '2016-7-7 20:33:20', '2016-7-7 20:33:20');

SELECT * from mxd_refuse_reason_template ORDER BY id desc limit 1000;


SELECT * from borrows WHERE p_id=97 ORDER BY id desc limit 100;   
SELECT * from borrows_repayment WHERE bo_id=1214174


SELECT * FROM text_template ORDER BY id desc limit 100;






