SELECT * from admin LIMIT 100;
SELECT * from user_info ORDER BY id desc limit 100;

SELECT * from  site_flash_setting
SELECT * from user_sign_record ORDER BY id desc limit 100

select * from site_flash_setting
    where position = 'mxdAppTp'
    and enabled = 1
    ORDER BY sort desc
    limit 1

select * from site_flash_setting ORDER BY id desc   		
  			and type=1
  			and position=''
  		order by id desc limit 5 
select id, enabled, is_login,link,name,path,title,position,sort,type,am_id,create_time,create_time from site_flash_setting where 1=1 and type=1 and am_id is null and position='mxd_wap_head' order by id desc limit 5 

SELECT success,error from nono_studentAuth_log WHERE user_id=? is_student=0

SELECT count(1) as count from nono_studentAuth_log WHERE user_id=7224499 and is_student=0 UNION SELECT count(1)  from nono_studentAuth_log WHERE user_id=7224499 and is_student=1


INSERT INTO nono_studentAuth_log 
 (realname,idnum,into_school_time,school_name,is_sutdent,auth_type) VALUES 
 ('xiaoming','42099808877777123','2012','jsu',0,1)


SELECT * FROM user_approach_info ORDER BY id desc limit 100;

SELECT * from system_sms_log WHERE LENGTH(mobilenum)>11 ORDER BY id desc  

SELECT * from user_info WHERE id=7224962

1004523



SELECT b.id as bo_id,br.id as br_id,br.user_id as m_id,
		               br_time,br_repayed_tech_fee,
		               br_price,
		               price_return
                      FROM borrows_repayment br
                      left join borrows b on br.bo_id = b.id
				      where br_is_repay =0 and floor((unix_timestamp(br_time)-unix_timestamp())/3600/24) = 3
                      and b.bo_is_success = 1 and br_is_hnapay_deduct = 0


SELECT * from data_dict ORDER BY id desc limit 1000;


SELECT * from site_flash_setting ORDER BY id desc 


SELECT * from user_student_info WHERE user_id=7219398 ORDER BY id desc limit 100;
SELECT * from user_info WHERE id=7219398
SELECT * from user_student_info WHERE user_id=7219398 

SELECT * from user_info ORDER BY id desc limit 100;

SELECT * from weixin_Qr_Code limit 100;


SELECT * from user_info ORDER BY id desc LIMIT 100;  #7224989

SELECT * from borrows_dunning_contact ORDER BY id desc limit 100;

SELECT * from user_info WHERE id=7194796
SELECT * FROM user_student_info WHERE user_id=7194796

SELECT * from mxd_refuse_reason_template 


INSERT INTO mxd_refuse_reason_template VALUES(77,1,"学籍信息异常",0,1,1,NOW(),NOW());

INSERT INTO mxd_refuse_reason_template VALUES(78,2,"学籍信息系统账号与密码不匹配",77,1,1,NOW(),NOW());

INSERT INTO mxd_refuse_reason_template VALUES(79,3,"*学籍信息系统账号与密码存在不匹配的情况，请填写有效的学籍信息系统账号与密码。此过程只涉及系统自动校验，请放心填写",78,1,1,NOW(),NOW());  

SELECT * from system_sms_log ORDER BY id desc 

SELECT * from sms_task_detail ORDER BY id desc limit 1000;
SELECT * from sms_task 
SELECT * from sms_task_log ORDER BY 
SELECT * from activity_messages ORDER BY id desc limit 20000;

SELECT * from user_info WHERE id=7224879

SELECT * from borrows WHERE id=711879

SELECT * from borrows ORDER BY id desc limit 100;
SELECT * from borrows_repayment WHERE user_id=7776161 ORDER BY id desc limit 100;


SELECT * from borrows_archive ORDER BY id desc limit 100;

SELECT * from admin_work_remark WHERE remark_aim=7776144 ORDER BY id desc limit 100;

SELECT * from user_file_audit_info

select refuse_reason from admin_work_remark where remark_aim=#{userId,jdbcType=VARCHAR} and 
    	          bo_id=#{boId,jdbcType=VARCHAR} ORDER BY id desc limit 1; 

SELECT * from user_info WHERE id=7776172
SELECT * from borrows

SELECT * from user_bankcard_info WHERE user_id=7776172;
SELECT * from user_bankcard_auth WHERE user_id=7776172

UPDATE borrows SET bo_title="应急周转" WHERE id IN (
) 

SELECT id from borrows WHERE bo_title like("购房",
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
523876  667540


UPDATE borrows b SET b.bo_title="应急周转" and b.bo_aim="应急周转" WHERE  EXISTS (SELECT 1 from borrows a WHERE a.p_id in (77,83,87,88) and (a.bo_title LIKE "%购房%" OR a.bo_title LIKE "%买房%"))

update borrows set bo_title = '投资(不得用于购房 炒股 基金和结构化金融产品等高风险的投资)
' , bo_aim='投资(不得用于购房 炒股 基金和结构化金融产品等高风险的投资)
' where id = 6687

SELECT * from borrows WHERE id=257122



update borrows set bo_title = '应急周转
' , bo_aim='应急周转
' where id = 6894;
update borrows set bo_title = '应急周转
' , bo_aim='应急周转
' where id = 7548;

SELECT * from user_info WHERE mobile_num='8600001011'

SELECT * from user_info ORDER BY id desc limit 100;



SELECT * from borrows WHERE id=711895

SELECT br.*,b.p_id from borrows_repayment br LEFT JOIN borrows b ON br.bo_id=b.id WHERE b.p_id=94 ORDER BY br.id desc limit 100;

SELECT * from borrows_repayment WHERE user_id in(7776172,7776161,7224879) ORDER BY id desc limit 100;

SELECT b.id as bo_id,br.id as br_id,br.user_id as m_id,b.p_id as p_id,
		               br_time,br_repayed_tech_fee,
		               br_price,
		               price_return
                      FROM borrows_repayment br
                      left join borrows b on br.bo_id = b.id
				      where b.p_id=94 and br_is_repay =0 and floor((unix_timestamp(br_time)-unix_timestamp())/3600/24) = 3
                      and b.bo_is_success = 1 and br_is_hnapay_deduct = 0

SELECT * from site_flash_setting ORDER BY id desc limit 1000;

SELECT * from unifi_InterestrateCut WHERE mobile_num=13567678821

SELECT * from user_info WHERE id=1121777;

SELECT * from gab_water_photo_log ORDER BY id desc limit 100;

ALTER TABLE site_flash_setting
ADD  student_status TINYINT(1) NOT NULL DEFAULT 0  COMMENT "根据学籍是否过期来弹屏，1表示没有过期，2表示过期"

ALTER TABLE unifi_InterestrateCut ADD channel_id varchar(10) NOT NULL DEFAULT '0' COMMENT '渠道来源号'


SELECT * from user_info WHERE id=7776171



SELECT * from unifi_InterestrateCut ORDER BY id desc limit 100;


SELECT * from user_info WHERE user_name='ck15529008083'   #1126403

SELECT * from borrows_dunning_contact WHERE user_id=7776313

select uba.auth_type,ubi.* from user_bankcard_auth uba join  user_bankcard_info ubi on uba.bank_card_id = ubi.id
                    where ((uba.auth_type = 2 and uba.auth_status = 1) or (uba.auth_type = 5 and uba.auth_status = 1) or (uba.auth_type = 1 and uba.auth_status = 1)) and uba.user_id = 1126403 and ubi.is_deleted = 0 order by uba.auth_time desc

SELECT * from user_bankcard_auth WHERE user_id=1126403

SELECT * from borrows WHERE id=711954

SELECT * from borrows_archive WHERE bo_id=711954

SELECT * from borrows_dunning_contact ORDER BY id desc limit 1000;

SELECT * from mxd_refuse_reason_template ORDER BY id desc LIMIT 100;

SELECT * from borrows_repayment WHERE user_id=7776161
SELECT * from youqian_cooperation_log WHERE id=31465 ORDER BY id desc limit 100;

SELECT * from user_info WHERE id=7776161

SELECT * from user_file_audit_info WHERE user_id=7776373
SELECT * from user_file_type_info 
SELECT * from  user_file_info WHERE file_audit_id in (2109956,2109957,2109958)

SELECT u.id as mup_id
            FROM user_file_audit_info u
            LEFT JOIN user_file_info mui ON u.id=mui.file_audit_id
            LEFT JOIN user_file_type_info mut ON mut.id = u.file_type_id
            WHERE u.user_id= 7793654 AND mut.file_score_id = 1
            GROUP BY u.id
            ORDER BY u.id DESC

SELECT * from finance_account WHERE user_id=7776368


SELECT * from admin LIMIT 1000;


SELECT
	ui.id m_id,
	wc.bank_id banks_id,
	wc.bank_id,
	wc. STATUS gf_status,
	wc.poundage gf_poundage,
	real_name realname,
	id_num idnum,
	mobile_num mobilenum,
	price gf_price,
	free gf_withdrawal_price,
	customer_servicer am_id_follow_cs
FROM
	withdraw_cash wc
LEFT JOIN user_info ui ON wc.user_id = ui.id
WHERE
	wc.id =

SELECT * from withdraw_cash ORDER BY id desc LIMIT 100;

SELECT * from bank ORDER BY id asc limit 1000;



SELECT * from user_student_info usi INNER JOIN borrows b ON b.user_id=usi.user_id 
inner JOIN borrows_archive  ba ON b.id=bo.bo_id
WHERE usi.valid_education is not null and b.id is not null and b.bo_is_success=0  and bo.is_audit=3 order by usi.id desc limit 100;


UPDATE user_student_info SET academy='成都文理学院' WHERE user_id=8119141

SELECT * from data_dict ORDER BY id desc limit 1000;

SELECT * from  user_info WHERE mobile_num='15064137380' ORDER BY id desc limit 100;

SELECT * from site_flash_setting ORDER BY id desc limit 100;

SELECT * from withdraw_cash WHERE user_id=7930733 ORDER BY id desc limit 100;

SELECT * from user_info WHERE mobile_num='8888822222'


SELECT * from admin ORDER BY id desc limit 1000;
INSERT INTO `admin` VALUES ('1849' ,'itar', 'dengzhiyuan', 'd051d170235c6682e334e6a5abd8ebdb', 7, NULL, 0, NULL, 0, 1, 1, '|1|', 0, '904,166,815,818,832;916,548,419,615,665;506,062,859,892,802;022,337,759,295,110;594,524,779,790,294;551,193,473,080,226;672,635,627,583,754;185,650,129,633,189;', '', 'dzy@nonobank.com', '', '13482536518', '801', 0, '', 0, 0, 1, '98fad7c5c6c38fd975316375a139a1a3', 1, 1, '', 1, '0000-0-0 00:00:00', '2015-5-31 20:42:36');
INSERT INTO data_dict VALUES (632, 'MgPro.MXD.IOS.history.version', ' 美国名校贷pro版ios版本号', NULL, '1.4.2', NULL, '美国名校贷Pro版ios版本号', 1, 1, '2016-7-21 16:31:33', '2016-7-21 16:31:33');




SELECT * from user_info WHERE id=7776161

SELECT * from borrows_repayment WHERE user_id=7930733

SELECT * from finance_account WHERE user_id=7930733


SELECT * from site_flash_setting ORDER BY id desc limit 100;

SELECT * from borrows WHERE id=1004133

SELECT * from borrows WHERE user_id=7930733

SELECT * from user_bankcard_auth WHERE user_id=7930733

SELECT * from borrows_archive WHERE bo_id=1004133
SELECT * from user_info WHERE id=7930842
SELECT * from mxd_refuse_reason_template ORDER BY id desc 

SELECT * from withdraw_cash_alipay ORDER BY id desc limit 100;

SELECT * FROM user_student_info WHERE user_id=7930842
SELECT * from finance_account WHERE user_id=7930842

SELECT * from borrows WHERE id=695661

SELECT * from borrows WHERE id=1004133

SELECT * from user_info WHERE mobile_num='8888822222'
SELECT * from borrows_prepare WHERE user_id=7930733;
SELECT * from borrows WHERE user_id=7930733

SELECT * from borrows_archive WHERE bo_id=1004235

SELECT * from unifi_InterestrateCut  WHERE user_id=7930733

INSERT INTO user_hkconpon_template (`id`, `value`, `grant_time`, `overdue_time`, `suit_products`, `money_limit`, `expect_limit`, `repay_limit`, `education`, `use_time`, `create_time`, `create_username`, `update_time`, `remark`, `source`, `templateFlag`, `approachId`, `use_type`, `trigger_method`, `advance_flag`, `superposition`, `deduction_type`) VALUES (37, 10.00, '2016-7-15 19:26:33', '2016-9-3 23:59:59', '名校贷,名校贷应急包,白领包,专科包,0元付', '3000-7000', '1,2,3,12,24,36', '1-36', '专科,本科,硕士研究生,博士研究生', NULL, '2016-7-15 19:26:31', 'stwengzhijun', '2016-7-15 19:26:31', NULL, '刘素琼', '', 1888, 1, 1, 1, 2, '利息');
INSERT INTO user_hkconpon_template (`id`, `value`, `grant_time`, `overdue_time`, `suit_products`, `money_limit`, `expect_limit`, `repay_limit`, `education`, `use_time`, `create_time`, `create_username`, `update_time`, `remark`, `source`, `templateFlag`, `approachId`, `use_type`, `trigger_method`, `advance_flag`, `superposition`, `deduction_type`) VALUES (38, 15.00, '2016-7-29 15:31:35', '2016-9-3 23:59:59', '名校贷,名校贷应急包,白领包,专科包,0元付', '7100-10000', '1,2,3,12,24,36', '1-36', '专科,本科,硕士研究生,博士研究生', NULL, '2016-7-15 19:27:04', 'jishuting', '2016-7-29 15:31:34', '', NULL, '', 1888, 1, 1, 1, 2, '利息');
INSERT INTO user_hkconpon_template (`id`, `value`, `grant_time`, `overdue_time`, `suit_products`, `money_limit`, `expect_limit`, `repay_limit`, `education`, `use_time`, `create_time`, `create_username`, `update_time`, `remark`, `source`, `templateFlag`, `approachId`, `use_type`, `trigger_method`, `advance_flag`, `superposition`, `deduction_type`) VALUES (39, 25.00, '2016-7-29 15:31:47', '2016-9-3 23:59:59', '名校贷,名校贷应急包,白领包,专科包,0元付', '10100-50000', '1,2,3,12,24,36', '1-36', '专科,本科,硕士研究生,博士研究生', NULL, '2016-7-15 19:27:33', 'jishuting', '2016-7-29 15:31:46', '', NULL, '', 1888, 1, 1, 1, 2, '利息');

SELECT * from user_hkconpon_template ORDER BY id desc limit 100;
SELECT * from user_info ORDER BY id desc limit 100;
SELECT * from user_hkconpon ORDER BY id desc limit 100;

UPDATE user_hkconpon_template set remark =null WHERE id=37


SELECT * from products ORDER BY id desc limit 100;

SELECT * from products_config ORDER BY id desc limit 100;

SELECT b.bo_bidding_type,b.* from borrows b WHERE b.p_id=93

SELECT b.bo_bidding_type,b.* from borrows b WHERE b.p_id in(93,77) ORDER BY id desc limit 100;

SELECT * from data_dict ORDER BY id desc limit 100;
INSERT INTO data_dict VALUES (693, 'Mg.MXD.Android.history.version', ' 美国名校贷pro版android版本号', NULL, '1.5', NULL, '美国名校贷Pro版android版本号', 1, 1, '2016-8-5 16:31:33', '2016-8-5 16:31:33');


SELECT * from products ORDER BY id desc limit 100;



SELECT * from data_dict  ORDER BY id desc limit 100;
INSERT INTO data_dict VALUES (726, 'unifi_little_limitHighest', 'UniFi小额贷最大借款金额', 1, '50000', NULL, 'UniFi小额贷最大借款金额', 1, 1, '2016-4-22 20:00:02', '2016-4-22 20:00:02');


SELECT * from borrows_loan ORDER BY id desc limit 100;


SELECT * from user_info WHERE mobile_num='18684802225'
SELECT * from user_approach_info WHERE user_id=7747696  
SELECT * from borrows_dunning_contact WHERE user_id=7931450    KvCJaVT0iw6e+1r6oCpz

SELECT * from user_info WHERE mobile_num='8888822221'
SELECT * from user_student_info WHERE user_id=7931158
UPDATE user_student_info SET academy=NULL , campus=NULL WHERE user_id=7931158
SELECT * from user_student_info WHERE user_id=7931158


SELECT * from products ORDER BY id desc limit 100;
INSERT INTO products VALUES (97, 'D3-Q3-Q', 3, 'UniFi小额贷', 'DQHBFX', 'DQHBFX', 1, 0, '无', '自有渠道', 5000.00, 50000.00, NULL, NULL, 1, NULL, NULL, 1, '2016-8-8 17:38:21', '2016-8-8 17:38:21');
SELECT * from user_info WHERE mobile_num='8600001144'
SELECT * from finance_account WHERE user_id=7931158;
SELECT * from withdraw_cash_alipay WHERE user_id=7931158
SELECT * from borrows_repayment WHERE bo_id=1004392
SELECT * from borrows_prepare WHERE user_id=7931158;
SELECT * from borrows_repayment WHERE id=12095598;
SELECT * from borrows_accept WHERE bo_id=1004361;
SELECT * from borrows_bidding WHERE bo_id=1004361;

SELECT * from borrows_archive  ORDER BY id desc limit 100;

INSERT INTO borrows_archive VALUES (1004342, 1004361, 'borrow_video_audit', '7930733', '2016-07-22 10:05:58：video_sub_mark 用户提交视频签约。2016-07-28 19:41:42', 1, 10307, 3, 10307, '2016-7-22 10:05:58', '2016-7-28 19:41:42', 1, NULL, NULL, '2016-7-22 10:05:58', '2016-7-28 19:44:24', NULL);
INSERT INTO borrows_archive VALUES (1004377, 1004399, 'borrow_video_audit', '7930733', '2016-07-22 10:05:58：video_sub_mark 用户提交视频签约。2016-07-28 19:41:42', 1, 10307, 3, 10307, '2016-7-22 10:05:58', '2016-7-28 19:41:42', 1, NULL, NULL, '2016-7-22 10:05:58', '2016-7-28 19:44:24', NULL);

SELECT
				  b.id AS bo_id,
				  b.user_id AS m_id,
				  bo_can_success,
				  bo_is_success,
				  bd.va_id
				FROM borrows b
				LEFT JOIN borrows_bidding bd ON b.id = bd.bo_id
				WHERE b.bo_can_success = 3 AND b.bo_is_success = 0 AND (bd.va_id IS NULL
				      OR bd.va_id <> 23665) AND b.bo_is_finish IN (0,1) and b.p_id not in (96)
				GROUP BY b.id
				ORDER BY b.bo_audit_time,b.id limit 10;

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

SELECT * from borrows WHERE bo_all_repayed=1 ORDER BY id desc limit 100;


SELECT
				  fot.is_both fot_is_both,
				  rof.id fo_id,
				  fot.type_keyword fot_kwd,
					rof.target_role
				FROM finance_operation_type fot
				  LEFT JOIN finance_operation fo
				    ON fot.id = fo.operation_type
				  LEFT JOIN finance_operation_relation rof
				    ON fo.id = rof.operation_id 
				  LEFT JOIN finance_account sfa
				    ON rof.source_role = sfa.role_id  WHERE fo.operation_keyword = 'tixian_fee'
				    AND sfa.id =  12242797    AND rof.is_enable= 1 LIMIT 1 

SELECT fot.is_both fot_is_both, rof.id fo_id, fot.type_keyword fot_kwd FROM 
 finance_operation_type fot LEFT JOIN finance_operation fo ON fot.id = fo.operation_type LEFT JOIN 
 finance_operation_relation rof ON fo.id = rof.operation_id LEFT JOIN finance_account sfa ON 
 rof.source_role = sfa.role_id LEFT JOIN finance_account tfa ON rof.target_role = tfa.role_id WHERE 
 fo.operation_keyword = 'tixian_chenggong' AND sfa.id = 12242797 AND tfa.id = 72 AND rof.is_enable= 1 LIMIT 1

SELECT * from finance_operation  ;
SELECT * from finance_operation_relation  WHERE source_role=3 OR target_role=3
  
 
INSERT INTO `finance_operation_relation` VALUES (591, 90, 'tixian_fee', 7, '提现手续费', 56, '提现手续费', 1, 1, '2016-8-7 10:40:10', '2015-8-7 10:40:10');
INSERT INTO `finance_operation_relation` VALUES (592, 90, 'tixian_fee', 56, '提现手续费', 7, '提现手续费', 1, 1, '2016-8-7 10:40:10', '2015-8-7 10:40:10');

SELECT * from finance_role WHERE id=3

SELECT * from finance_account WHERE id=72

SELECT * from finance_log WHERE user_id=1267721

INSERT INTO finance_role VALUES (57, '支付宝账户', 'unifialipayaccount', '用户的支付宝.1对多', 0, 0, 0, 0, 1, '2016-5-31 20:25:12', '2016-5-31 20:25:12');

INSERT INTO finance_account (role_id,`version`,create_time,update_time)
VALUES((SELECT id FROM finance_role where role_keyword='unifialipayaccount'),1,NOW(),NOW());


INSERT INTO `finance_operation_relation` VALUES (593, 89, 'tixian_chenggong', 7, 'UniFi支付宝提现', 57, 'UniFi支付宝提现', 1, 1, '2016-8-11 10:40:10', '2015-8-11 10:40:10');
INSERT INTO `finance_operation_relation` VALUES (594, 89, 'tixian_chenggong', 57, 'UniFi支付宝提现', 7, 'UniFi支付宝提现', 1, 1, '2016-8-11 10:40:10', '2015-8-11 10:40:10');

SELECT a.id as fa_id
					FROM finance_role r
					JOIN finance_account a ON r.id=a.role_id
					WHERE r.role_keyword=  'unifialipayaccount'
 AND a.owner_id= ''    

SELECT * from finance_account WHERE id=12243145

SELECT  br.* from borrows b INNER JOIN  borrows_repayment br ON b.user_id=br.user_id WHERE b.p_id=97

SELECT * from borrows WHERE id=1004392

SELECT * from america_school ORDER BY id desc limit 100;



INSERT INTO mxd_refuse_reason_template VALUES (317, 2, 'CR054支付宝账号异常', 180, 1, 1, '2016-4-25 14:43:00', '2016-4-25 14:43:00');
INSERT INTO mxd_refuse_reason_template VALUES (318, 3, '支付宝账号与用户真实姓名不匹配', 317, 1, 1, '2016-4-25 14:43:00', '2016-4-25 14:43:00');


INSERT INTO mxd_refuse_reason_template VALUES (319, 2, 'ZR054支付宝账号异常', 290, 1, 1, '2016-4-25 14:43:00', '2016-4-25 14:43:00');
INSERT INTO mxd_refuse_reason_template VALUES (320, 3, '支付宝账号与用户真实姓名不匹配', 319, 1, 1, '2016-4-25 14:43:00', '2016-4-25 14:43:00');


SELECT * from system_mail_template WHERE kwd='zhuce_renzheng_usa_mxd'

SELECT * from system_mail_template_new ORDER BY id desc limit 100;

INSERT INTO system_mail_template_new VALUES (2, '会员学籍认证邮件_美国名校贷', 'xueji_renzheng_usa_mxd', 'UniFi学籍认证邮件', '<p><style type=\"text/css\">#mailtext p{text-indent: 2em}#mailtext a:visited {color: #0000FF;}#mailtext a:hover {color: #0099CC;}#mailtext a:active {color: #663399;}#mailtext a:link {color: #0000FF;}</style></p>\n<div id=\"mailtext\">\n<p>您好！</p>\n<p>欢迎您注册UniFi,您的邮箱验证码为:<p>\n<p>{EmailValidateCode}</p>\n<p>谢谢</p>\n<p>系统发信，请勿回复</p>\n<p>若您有任何疑问，请在关注UniFi微信公众号unifi2016，联系我们的同学帮您解决。</p>\n<p>UniFi</p>\n</div>', 'UniFi学籍认证发送到注册邮箱，内容包含一个验证链接。即使禁用仍然有效。', 1, 'EmailValidateCode', 1, '2016-8-18 21:35:06', '2016-8-18 21:35:06');



SELECT * from user_info WHERE mobile_num='15888888891';
SELECT * from user_bankcard_info WHERE user_id=8482961
SELECT * from user_bankcard_auth WHERE user_id=8482961
SELECT * from borrows WHERE user_id=7931110;
SELECT * from borrows WHERE user_id=8483066;
SELECT * from borrows_repayment WHERE user_id=8483021
SELECT * from borrows_bidding WHERE bo_id=1166323 ORDER BY id desc limit 100;
SELECT * from withdraw_cash_alipay ORDER BY id desc limit 100;  1166323
SELECT * from withdraw_cash WHERE user_id=7931110 ORDER BY id desc limit 100;  1166323

SELECT * from borrows WHERE p_id=94 and bo_is_success=1 ORDER BY id desc limit 100;

SELECT id ,name,kwd,enable,task_lock as taskLock,
			 		time,enter_time as enterTime,cycle,last_run_time as lastRunTime,log
					FROM timing_task  WHERE kwd='update_ba_br_punish' AND enable=1

SELECT * from borrows_prepare WHERE p_id=94 ORDER BY id desc limit 100;

SELECT * from system_sms_log WHERE ssl_type='validation_mobile_mxd_usa'  ORDER BY id desc limit 100;

SELECT * from borrows WHERE id=1166289
SELECT * from borrows_bidding WHERE bo_id=1166323
SELECT * from user_bankcard_info WHERE user_id=8483149
SELECT * from user_bankcard_auth WHERE user_id=8483149
SELECT * from user_alipay_info WHERE user_id=8483149



SELECT * FROM text_template ORDER BY id desc limit 100;

SELECT b.user_id as m_id,b.id as bo_id, bo_title, 
				UNIX_TIMESTAMP(bo_finish_time) as bo_finish_time, bo_audit_delay_days, 
				CASE 
				  WHEN m.user_type = 1 THEN '理财'
				  WHEN m.user_type = 2 THEN '贷款'
				  WHEN m.user_type = 3 THEN '白领'
				  WHEN m.user_type = 4 THEN '微企业主'
				  WHEN m.user_type = 5 THEN '学生'
				  WHEN m.user_type = 6 THEN '企业主'
				  WHEN m.user_type = 7 THEN 'vip企业主'
				  ELSE '' END as m_borrow_type
				FROM borrows b left join user_info m on b.user_id = m.id 
				WHERE bo_loan_template is null AND bo_is_finish=1 and bo_can_success<>3 AND bo_is_success=0 
				AND '2016-09-02 11:10:00'>= UNIX_TIMESTAMP(bo_finish_time) +24*60*60*({$DaysCount} + bo_audit_delay_days) AND b.p_id NOT IN (86) limit 50 



SELECT * from user_bankcard_info ORDER BY id desc limit 100;
UPDATE  user_bankcard_info SET is_deleted=1 WHERE bank_card_no='6236683520001936702' ;

SELECT * from data_dict WHERE data_type_code LIKe "%unifi%"

SELECT * from borrows WHERE id=154927


