SELECT * FROM `youqian_cooperation_log`; 
SELECT type,COUNT(*) FROM youqian_cooperation_log GROUP BY 1 HAVING COUNT(*)>1 ;

SELECT * FROM youqian_cooperation_log WHERE `status` ip 

INSERT INTO `youqian_cooperation_log` VALUES (6, 1, '5A58EF1E-EEF2-478D-94EE-709B98407589', '183.239.131.110', 'http://www.iyouqian.com/external/callback4joint/1000407/10548/?did=5A58EF1E-EEF2-478D-94EE-709B98407589&ret_type=2&t=1457945112&sign=22DC6FCF04F93109E4A8BB40EC549D6A', 0, NULL, 0, 1, '2016-3-14 16:45:12', '2016-3-14 16:45:12');

INSERT INTO `youqian_cooperation_log` VALUES (7, 1, '5A58EF1E-ESB2-478D-94EE-709B98407589', '173.239.131.110', 'http://www.iyouqian.com/external/callback4joint/1000407/10548/?did=5A58EF1E-EEF2-434D-94EE-709B98407589&ret_type=2&t=1458009022&sign=05323E1015C2B82203D381117519D224', 0, NULL, 0, 1, '2016-3-15 10:30:22', '2016-3-15 10:30:22');

SELECT * from youqian_cooperation_log WHERE idfa='5A58EF1E-ESB2-478D-94EE-709B98407589';

SELECT * from data_dict ;

SELECT * from borrows_archive ORDER BY id desc limit 100;

SELECT * from bank limit 1000;

SELECT * from products ORDER BY id DESC;

SELECT * from gab_water_photo_log ORDER BY id desc;
SELECT * from gab_water_photo_log WHERE user_id=5470384 AND code in (-1202,-1203,-1205,0)

SELECT * from gab_water_photo_log WHERE user_id=874047;

SELECT real_name as realname,username as username,id_num as idnum from user_info WHERE id=5470305;

SELECT * from user_info WHERE user_name='dzyitar'
SELECT * from borrows WHERE user_id=3207346;
SELECT * from borrows_prepare WHERE user_id=3207346

select * from data_dict where data_type_code='JXHJConfig'

SELECT * from finance_account WHERE user_id=3207346;

SELECT * from user_student_info  WHERE user_id=3207346 ORDER BY id desc limit 100;
SELECT * from borrows_raise 

SELECT * from withdraw_cash WHERE user_id=3207346 ORDER BY id desc ;
SELECT * from borrows_repayment WHERE user_id=3207346

ALTER TABLE site_flash_setting
ADD  student_status TINYINT(1) NOT NULL DEFAULT 0  COMMENT "根据学籍是否过期来弹屏，1表示没有过期，2表示过期";
SELECT * from site_flash_setting ORDER BY id desc limit 100;


INSERT INTO `data_dict` VALUES (590, 'Mg.MXD.IOS.history.version', ' 美国名校贷ios版本号', NULL, '1.0.3', NULL, '美国名校贷ios版本号', 1, 1, '2016-4-25 16:31:33', '2016-4-25 16:31:33'); 

SELECT * from data_dict  ORDER BY id desc limit 1000;

INSERT INTO data_dict VALUES (620, 'MgPro.MXD.IOS.history.version', ' 美国名校贷pro版ios版本号', NULL, '1.4.0', NULL, '美国名校贷Pro版ios版本号', 1, 1, '2016-7-8 16:31:33', '2016-7-8 16:31:33');


SELECT DATE_FORMAT(create_time,'%Y-%m-%d') days,COUNT(1) COUNT FROM gab_water_photo_log GROUP BY days;

INSERT INTO user_hkconpon_template VALUES (109,10.00, '2016-7-15 19:26:33', '2016-9-3 23:59:59', '名校贷,名校贷应急包,白领包,专科包,0元付', '3000-7000', '1,2,3,12,24,36', '1-36', '专科,本科,硕士研究生,博士研究生', NULL, '2016-7-15 19:26:31', 'stwengzhijun', '2016-7-15 19:26:31', NULL, '刘素琼', '', 1888, 1, 1, 1, 2, '利息');
INSERT INTO user_hkconpon_template VALUES (111,15.00, '2016-7-29 15:31:35', '2016-9-3 23:59:59', '名校贷,名校贷应急包,白领包,专科包,0元付', '7100-10000', '1,2,3,12,24,36', '1-36', '专科,本科,硕士研究生,博士研究生', NULL, '2016-7-15 19:27:04', 'jishuting', '2016-7-29 15:31:34', '', NULL, '', 1888, 1, 1, 1, 2, '利息');
INSERT INTO user_hkconpon_template VALUES (112,25.00, '2016-7-29 15:31:47', '2016-9-3 23:59:59', '名校贷,名校贷应急包,白领包,专科包,0元付', '10100-50000', '1,2,3,12,24,36', '1-36', '专科,本科,硕士研究生,博士研究生', NULL, '2016-7-15 19:27:33', 'jishuting', '2016-7-29 15:31:46', '', NULL, '', 1888, 1, 1, 1, 2, '利息');
SELECT * from user_hkconpon_template ORDER BY id desc limit 10;

SELECT * from unifi_InterestrateCut ORDER BY id desc limit 100;



