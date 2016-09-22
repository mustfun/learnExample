SELECT * FROM user_info WHERE mobile_num=15618058835;  #4939996

SELECT * FROM borrows_prepare WHERE user_id=3532821;
SELECT * from borrows WHERE user_id=3532821

SELECT * from borrows_repayment WHERE user_id=3532821;

SELECT * from youqian_cooperation_log WHERE ip='110.82.72.228'

SELECT * from student_school WHERE name='江西经济管理干部学院' ORDER BY id desc limit 100;

SELECT * from user_file_type_info WHERE id=52



SELECT * FROM user_info WHERE mobile_num=15578284811
  

SELECT * from user_action_log WHERE user_id=5494810

SELECT * from user_info WHERE real_name='0'  ORDER BY id desc limit 100;  
SELECT * from user_info WHERE id=6846984 

SELECT * from user_action_log WHERE user_id=6810383;
SELECT * from user_info WHERE id=6810383

SELECT * from user_info WHERE user_name='15103056_201'
SELECT * from user_student_info WHERE user_id=3375978

select * from user_education_auth_log where user_id=5494810;

select * from user_student_info ORDER BY id desc limit 10000;
select	o.id as ao_id,
                    o.ao_table,
                    o.table_id,
                    o.am_id,
                    o.ao_operation,
                    a.am_username,
            		o.create_time as date_create
                from admin_operation o
                inner join admin a on (a.id = o.am_id)
                where o.ao_table ='members' and table_id = 6819631
SELECT * from user_info WHERE id=6826246
SELECT * from user_action_log WHERE user_id=6826246
SELECT * from user_student_info WHERE user_id=6825096

SELECT * from admin_operation WHERE ao_table='members' ORDER BY id desc limit 100;

SELECT ui.id,ui.real_name,usi.province,usi.campus,usi.major,ui.create_time,usi.create_time from user_info ui INNER JOIN user_student_info usi ON ui.id=usi.user_id WHERE ui.real_name='0' ORDER BY id desc limit 100;

SELECT * from user_info WHERE mobile_num='18065217191'   #   6829346

SELECT   ufi.* FROM
                    	user_file_info ufi
                    LEFT JOIN user_file_audit_info ufai ON ufi.file_audit_id = ufai.id
                    WHERE ufai.user_id=6829346

SELECT * from user_file_audit_info WHERE user_id=6829346
SELECT * from user_file_audit_info ORDER BY id desc limit 100;

SELECT * from user_info WHERE mobile_num=18482124711  
SELECT * from borrows WHERE user_id=1266736

SELECT
				b.user_id,
				p.id as p_id,
			  	b.bo_expect,
			  	b.bo_expect_cat,
				b.bo_price,
				uc.cutValue as bo_paytype,
				b.bo_rate
			FROM
				`borrows` b
			LEFT JOIN user_info ui ON b.user_id = ui.id
			LEFT JOIN products p ON b.p_id =p.id
			LEFT JOIN borrows_prepare bp ON b.bp_id=bp.id
			LEFT JOIN user_InterestrateCut uc ON b.bp_id=uc.bp_id
			WHERE
				b.bo_is_state = 1
			AND ui.user_type = 5
			AND b.bo_is_success=1
			And b.bo_all_repayed=0
			AND b.user_id =1266736


SELECT * from user_info WHERE id=8125952
SELECT * from borrows WHERE user_id=8125952
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
			AND b.bo_is_success in (1,2,3,4)
			And b.bo_all_repayed in (0,1)
			AND b.user_id =1250657

SELECT * from user_info WHERE user_name='15972282_201'
SELECT * from borrows WHERE user_id=6685464
SELECT * from gab_water_photo_log WHERE user_id=6910947;

SELECT * from borrows WHERE user_id=6910947;
SELECT * from borrows_prepare WHERE user_id=6910947;
SELECT * from borrows_archive WHERE bo_id=619286

SELECT * from data_dict ORDER BY id desc limit 100;


SELECT * from user_info WHERE user_name=mobile_num;   15822259935

SELECT * from user_info WHERE mobile_num=15822259935

select * from america_school where name_en = 'Irvine Valley College'

SELECT * from system_mail_log ORDER BY id desc limit 100;

SELECT * from system_mail_log ORDER BY id desc limit 100;

SELECT * from user_info WHERE mobile_num=6266884219

SELECT * from bank WHERE id=1879588;

SELECT * from unifi_user_info_activity ORDER BY id desc limit 100;

SELECT * from system_sms_log WHERE ssl_text LIKE "%您已初审获批%" ORDER BY id desc LIMIT 1000;

SELECT * from system_sms_log ORDER BY id desc limit 100;

select 
	    id as "id" ,
		user_name as "userName" ,
		password as "password" ,
		mobile_num as "mobileNum" ,
		email as "email"
    from user_info
    WHERE id_num = 370786198904106915

SELECT *  FROM borrows_dunning_contact WHERE name='护照' and user_id= 7155831

SELECT b.name,ubi.bank_card_no FROM user_bankcard_auth uba
			LEFT JOIN user_bankcard_info ubi ON ubi.id=uba.bank_card_id AND auth_type=6 AND auth_status=1
			LEFT JOIN bank b ON b.id=ubi.bank_code
			WHERE uba.short_no=20160423233651289923318 AND ubi.user_id=7155831


SELECT * from user_bankcard_auth WHERE user_id=7155831

select real_name AS realname,mobile_num AS mobilenum from user_info where id=7155831

李浩隆    中国工商银行   6212261001044300074
SELECT * from borrows_repayment WHERE user_id=7155831

SELECT * from user_info WHERE id=7155831

SELECT * from system_sms_log ORDER BY id desc limit 100;

SELECT * from system_sms_log WHERE ssl_type='validation_mobile_mxd_usa' and id in(SELECT MAX(id) from system_sms_log WHERE ssl_type="validation_mobile_mxd_usa" GROUP BY mobilenum ORDER BY id desc) ORDER BY id desc ;

SELECT count(*) from system_sms_log WHERE ssl_type="validation_mobile_mxd" and create_time>'2016-04-24'  ORDER BY id desc limit 1000;

SELECT * from activity_messages  ORDER BY id desc limit 1000;

SELECT * from user_info WHERE mobile_num='18995850623'

SELECT * from student_school ORDER BY id desc limit 1000;

SELECT * from user_info WHERE user_name='18600008_5'
SELECT * from user_info_detail WHERE user_id=7533417

SELECT * from user_sign_record ORDER BY id desc limit 100;

SELECT * from data_dict ORDER BY id desc limit 100;

INSERT INTO `data_dict` VALUES (608, 'Mg.MXD.IOS.history.version', ' 美国名校贷ios版本号', NULL, '1.2.0', NULL, '美国名校贷ios版本号', 1, 1, '2016-5-30 16:31:33', '2016-5-30 16:31:33');

SELECT * from user_sign_record ORDER BY id desc limit 100;

SELECT * from borrows_dunning_contact WHERE user_id=7560149

SELECT * from user_student_info WHERE user_id=7560149

SELECT * from data_dict WHERE data_type_code='Mg.MXD.IOS.history.version'
SELECT * from data_dict WHERE data_type_code like '%Mg%'

SELECT * from pengyuan_recharge_log ORDER BY id desc limit 1000;
SELECT * from data_dict WHERE id in (597,608)
DELETE from data_dict WHERE id in (597,608)


SELECT * from user_info WHERE mobile_num=5166618987   #7568629
SELECT * from borrows_prepare WHERE user_id=7568629;
SELECT * from borrows WHERE user_id=7568629;
SELECT p.id as p_id,
                    p_code as p_code,
                    p_type as p_type,
                    p_name as p_borrow_type,
                    p_pay_type as p_pay_type,
                    p_accept_type,
                    p_expect,
                    p_delay_month,
                    p_assure_type,
                    p_approach,
                    p_price_min,
                    p_price_max,
                    p_enabled,
                     bp.id,
                     b.id,
                      b.bo_is_success
                      FROM borrows_prepare bp
                       LEFT JOIN products p ON bp.p_id=p.id
                       LEFT JOIN borrows b ON b.bp_id = bp.id
                       WHERE bp.id=1236316

SELECT *  from user_info WHERE id=7786966
SELECT * from user_info WHERE real_name='刘重远'

SELECT * from borrows_repayment WHERE user_id=7568629

SELECT * from borrows WHERE p_id in (77,83,87,88) and bo_title in("购房",
"买房",
"学区房",
"首付",
"房贷",
"开发商",
"中介",
"链家",
"中原",
"搜房",
"我爱我家"
)

SELECT * from borrows WHERE p_id in (77,83,87,88) and bo_title LIKE "%购房%"


SELECT * from borrows WHERE p_id in (77,83,87,88) and bo_title in(
"炒股",
"股票投资",
"理财",
"基金",
"金融产品",
"投资",
"配资",
"期货",
"杠杆",
"保证金"
)

UPDATE borrows SET bo_title="应急周转" WHERE id EXISTS (SELECT * from borrows WHERE bo_title in("购房",
"买房",
"学区房",
"首付",
"房贷",
"开发商",
"中介",
"链家",
"中原",
"搜房",
"我爱我家"
)
)

#title为购房的
SELECT
	*
FROM
	borrows
WHERE
   p_id in (77,83,87,88) and 
	(
		bo_title LIKE "%购房%"
		OR bo_title LIKE "%买房%"
		OR bo_title LIKE "%首付%"
		OR bo_title LIKE "%学区房%"
		OR bo_title LIKE "%房贷%"
		OR bo_title LIKE "%开发商%"
		OR bo_title LIKE "%中介%"
		OR bo_title LIKE "%链家%"
		OR bo_title LIKE "%中原%"
		OR bo_title LIKE "%搜房%"
		OR bo_title LIKE "%我爱我家%"
	)
#aim为购房的
SELECT
	*
FROM
	borrows
WHERE
   p_id in (77,83,87,88) and 
	(
		bo_aim LIKE "%购房%"
		OR bo_aim LIKE "%买房%"
		OR bo_aim LIKE "%首付%"
		OR bo_aim LIKE "%学区房%"
		OR bo_aim LIKE "%房贷%"
		OR bo_aim LIKE "%开发商%"
		OR bo_aim LIKE "%中介%"
		OR bo_aim LIKE "%链家%"
		OR bo_aim LIKE "%中原%"
		OR bo_aim LIKE "%搜房%"
		OR bo_aim LIKE "%我爱我家%"
	)

#第二类  bo_title
SELECT
	*
FROM
	borrows
WHERE
   p_id in (77,83,87,88) and 
	(
		bo_title LIKE "%炒股%"
		OR bo_title LIKE "%股票投资%"
		OR bo_title LIKE "%理财%"
		OR bo_title LIKE "%基金%"
		OR bo_title LIKE "%金融产品%"
		OR bo_title LIKE "%投资%"
		OR bo_title LIKE "%配资%"
		OR bo_title LIKE "%杠杆%"
		OR bo_title LIKE "%保证金%"
	)

#第二类  bo_aim
SELECT
	*
FROM
	borrows
WHERE
   p_id in (77,83,87,88) and 
	(
		bo_aim LIKE "%炒股%"
		OR bo_aim LIKE "%股票投资%"
		OR bo_aim LIKE "%理财%"
		OR bo_aim LIKE "%基金%"
		OR bo_aim LIKE "%金融产品%"
		OR bo_aim LIKE "%投资%"
		OR bo_aim LIKE "%配资%"
		OR bo_aim LIKE "%杠杆%"
		OR bo_aim LIKE "%保证金%"
	)

SELECT
	id
FROM
	borrows
WHERE
   p_id in (77,83,87,88) and 
	(
		bo_aim LIKE "%炒股%"
		OR bo_aim LIKE "%股票投资%"
		OR bo_aim LIKE "%理财%"
		OR bo_aim LIKE "%基金%"
		OR bo_aim LIKE "%金融产品%"
		OR bo_aim LIKE "%投资%"
		OR bo_aim LIKE "%配资%"
		OR bo_aim LIKE "%杠杆%"
		OR bo_aim LIKE "%保证金%"
	)


SELECT
	id
FROM
	borrows_prepare
WHERE
   p_id in (77,83,87,88) and 
	(
		bp_aim LIKE "%炒股%"
		OR bp_aim LIKE "%股票投资%"
		OR bp_aim LIKE "%理财%"
		OR bp_aim LIKE "%基金%"
		OR bp_aim LIKE "%金融产品%"
		OR bp_aim LIKE "%投资%"
		OR bp_aim LIKE "%配资%"
		OR bp_aim LIKE "%杠杆%"
		OR bp_aim LIKE "%保证金%"
	)

SELECT
	*
FROM
	borrows_prepare
WHERE
   p_id in (77,83,87,88) and 
	(
		bp_aim LIKE "%购房%"
		OR bp_title LIKE "%买房%"
		OR bp_title LIKE "%首付%"
		OR bp_title LIKE "%学区房%"
		OR bp_title LIKE "%房贷%"
		OR bp_title LIKE "%开发商%"
		OR bp_title LIKE "%中介%"
		OR bp_title LIKE "%链家%"
		OR bp_title LIKE "%中原%"
		OR bp_title LIKE "%搜房%"
		OR bp_title LIKE "%我爱我家%"
	)


SELECT * from user_info WHERE user_name='31086900_1'
SELECT * from unifi_InterestrateCut WHERE  user_id=7763175

SELECT * from borrows_prepare WHERE user_id=7763175
SELECT * from borrows WHERE user_id=7763175

SELECT * from site_flash_setting ORDER BY id desc limit 1000;

SELECT * from mxd_refuse_reason_template ORDER BY id desc limit 100;

SELECT * from user_channel_change_log ORDER BY id desc 


SELECT * from user_approach_info ORDER BY id desc limit 1000;

SELECT * from user_info WHERE mobile_num='8600002201'

SELECT * from admin_work_remark WHERE remark_aim='8005973'
SELECT * from admin_work_remark ORDER BY id desc limit 1000;
SELECT * from borrows WHERE user_id=8005973

SELECT * from borrows_archive WHERE bo_id=1014151 ORDER BY id desc limit 100;
select refuse_reason from admin_work_remark where remark_aim=8005973  and 
    	          bo_id=1014151 ORDER BY id desc limit 1; 
SELECT * from borrows_dunning_contact WHERE user_id='8005973'


SELECT * from region ORDER BY code desc   limit 1000;

SELECT * from data_dict  ORDER BY id desc limit 1000;

SELECT * from youqian_cooperation_log ORDER BY id desc limit 10000;

SELECT * from mxd_refuse_reason_template ORDER BY id desc LIMIT 100;

SELECT * from user_info where mobile_num ='6263905928'

SELECT * from user_file_audit_info WHERE user_id=7793654
SELECT * from user_file_info WHERE file_audit_id=2873270


SELECT * from user_file_audit_info ORDER BY id desc limit 100;

SELECT * from data_dict WHERE data_type_code='MgPro.MXD.IOS.history.version' ORDER BY id desc limit 100;

DELETE  from data_dict WHERE id=617;
SELECT * from user_info WHERE id=8043724

SELECT * from user_student_info WHERE user_id=8043724

SELECT * from user_info WHERE user_name='vicor9527';
SELECT * from user_student_info WHERE user_id='1097020'

UPDATE user_info SET is_education=1,is_student=1 WHERE id='1097020'
UPDATE user_student_info SET edu_start_date='2013-09-01',edu_graduate_date='2015-06-03' WHERE user_id='1097020'

SELECT * from unifi_InterestrateCut WHERE user_id=8175126

SELECT * from borrows_repayment WHERE user_id=7761136


SELECT * from site_flash_setting ORDER BY id desc limit 100;

SELECT * from america_region   limit 1000;

SELECT * from borrows_dunning_contact WHERE user_id=7761136 ORDER BY id desc limit 1000;

SELECT b.* from borrows b LEFT JOIN user_info ui on b.user_id=ui.id WHERE ui.mobile_num='18728617807'
SELECT ui.* from borrows_prepare b LEFT JOIN user_info ui on b.user_id=ui.id WHERE ui.mobile_num='15982617559'
SELECT * from user_info WHERE mobile_num='18728617807';

SELECT * from user_student_info WHERE user_id=8176018
SELECT * from user_info WHERE user_name='15982617559'

SELECT * from user_action_log WHERE user_id=6962822

SELECT * from borrows WHERE user_id='8176018'

SELECT * from borrows WHERE user_id=8176018

SELECT * from data_dict WHERE data_value LIKE '%223.202.100.31%' ORDER BY id desc limit 100;

SELECT * from system_sms_log WHERE mobilenum='8765095444'
SELECT * from borrows_repayment WHERE user_id=7786966

SELECT * from text_template WHERE id=120 OR id =119 ORDER BY id desc limit 100;

SELECT * from system_sms_log WHERE ssl_type='validation_mobile_mxd_usa' ORDER BY id desc limit 300;


SELECT user_info.`mobile_num`,borrows.`bo_finish_price`,user_info.`real_name` FROM user_info,borrows WHERE borrows.`p_id`=94 AND borrows.`bo_is_success`=1 AND borrows.`user_id`=user_info.`id`;


SELECT * from user_info WHERE id='7782652'
SELECT * from borrows WHERE user_id=7782652
SELECT * from borrows WHERE user_id=8212907
SELECT * from borrows_prepare WHERE user_id=8212907
SELECT * from borrows_archive WHERE bo_id=1091261

SELECT * from user_info WHERE mobile_num='15921929404'
SELECT * from user_approach_info WHERE user_id=8215818


SELECT * from site_flash_setting ORDER BY id desc limit 100;

select *  from site_flash_setting where 1=1
  		
  			and type=3
  	
  			and am_id is null
  			and position='mxd_App_huankuang'
  			and student_status=2
  	
  		    and enabled=1
  		order by id desc limit 5 

SELECT * from  finance_account ORDER BY id desc limit 10;
SELECT * from  finance_role  WHERE role_keyword='sitebalance' ORDER BY id desc limit 10;

SELECT * from user_info WHERE mobile_num='4804446043'
SELECT * from user_student_info WHERE user_id=8610211    #        1206401790

UPDATE user_student_info SET academy=NULL , campus=NULL,student_no=NULL WHERE user_id=8482925
SELECT * from user_info WHERE mobile_num='7862390840'


SELECT * from data_dict WHERE data_type_code like '%ios.history%' ORDER BY id desc limit 100;


SELECT * from user_info WHERE mobile_num='5083040763'
SELECT * from user_student_info WHERE user_id=9393651

SELECT * from borrows WHERE id=1152127
SELECT * from unifi_InterestrateCut order by id desc limit 100;

SELECT * from withdraw_cash_alipay WHERE user_id=11161553


SELECT * from user_alipay_info WHERE user_id=11161553

