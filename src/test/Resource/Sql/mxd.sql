SELECT * from admin_work_remark   WHERE refuse_reason=21 limit 10;

SELECT * from admin_work_remark ORDER BY id DESC LIMIT 1000;

SELECT * from mxd_refuse_reason_template;

 select * from admin_work_remark ORDER BY id desc  where remark_aim=344088 and 
    	          bo_id in (SELECT MAX(id) from borrows where user_id=3207745) ORDER BY id desc limit 1; 

select content from mxd_refuse_reason_template where parent_id=25 limit 1

 select id from mxd_refuse_reason_template where id=(select parent_id from mxd_refuse_reason_template where id=25)

SELECT * from mxd_refuse_reason_template WHERE id=25;

SELECT * from admin WHERE id=822;

SELECT * from user_htsb_info ORDER BY id desc limit 100; 


select * from user_file_info order by id desc limit 100;
 
select * from user_file_audit_info order by id desc limit 100;
 
select * from user_file_type_info ORDER BY id desc LIMIT 100 ;

SELECT id from user_file_type_info WHERE file_type_name='公安部水印照片' ORDER BY id DESC LIMIT 1;
INSERT INTO user_file_audit_info(user_id,file_type_id,title) VALUES(3123123,49,'公安部水印照片');

SELECT * FROM user_info WHERE id=434040; 


SELECT
	ufi.file_name
FROM
	user_file_info ufi
LEFT JOIN user_file_audit_info ufai ON ufi.file_audit_id = ufai.id
LEFT JOIN user_file_type_info ufti ON ufai.file_type_id = ufti.id
WHERE ufti.file_type_name='公安部水印照片' AND ufai.user_id=3207346

SELECT id,user_name,real_name,user_type from user_info WHERE id=900022 or id=3205114 or id=822;

SELECT * from user_info WHERE id=344098;


SELECT NOW();
select * from  data_dict
 order by id desc;

SELECT * from user_action_log ORDER BY id DESC limit 1000;

SELECT * FROM bill WHERE  is_repay=1 AND user_id=3205442 UNION SELECT * FROM bill WHERE  is_repay=2 AND user_id=3205442
SELECT b.expect_num,b.bill_amount,b.is_repay,b.create_time FROM bill b WHERE  b.is_repay=1 AND b.user_id=3205442 UNION SELECT b.expect_num,b.bill_amount,b.is_repay,b.create_time FROM bill b WHERE  b.is_repay=2 AND b.user_id=3205442	

SELECT * from user_info ORDER BY id DESC limit 100;

SELECT * from borrows_prepare ORDER BY id desc LIMIT 100;
SELECT * from borrows_prepare WHERE user_id=3207346

SELECT * FROM user_info WHERE mobile_num=15107408066
SELECT * FROM user_info WHERE id_num=420116199507261433


  CREATE TABLE `youqian_cooperation_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `type` varchar(20) DEFAULT '' COMMENT '设备类型',
  `idfa` char(40) DEFAULT NULL COMMENT '广告标识符',
  `ip` char(20) DEFAULT NULL COMMENT 'ip地址',
  `callback` char(64) DEFAULT NULL COMMENT '友钱回调地址，encode编码',
  `replay` int(2) DEFAULT NULL COMMENT '0表示0次激活，1表示1次激活，2表示2次激活',
  `callback_fail` int(2) DEFAULT NULL COMMENT '回调失败次数',
  `is_success` int(2) DEFAULT '0' COMMENT '0表示未完成1表示已完成',
  `status` int(2) DEFAULT '0' COMMENT '0表示不可用，1表示可用',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友钱合作下载app日志表';

SELECT * from borrows_repayment WHERE user_id=3208593 and bo_id=344223 ORDER BY id desc limit 1000;

SELECT bp_vip_autobid_percent from borrows_prepare LIMIT 1000;

select site_vip_autobid_percent,s_mix_bid from sites

SELECT id ab_id, null as va_type,  '0' is_vip, '0' as va_id,  user_id m_id, ab_account_amount, ab_lasttime FROM  borrows_autobidder WHERE ab_enable = 1 ORDER BY ab_lasttime, id 

SELECT * from borrows_prepare ORDER BY id desc LIMIT 1000;


SELECT * from withdraw_cash WHERE terminal=1 ORDER BY id desc LIMIT 100;
SELECT * from kuaiq_orders  ORDER BY id desc LIMIT 100;
SELECT * from timing_task ORDER BY id desc;

SELECT * from finance_account ORDER BY id DESC limit 1000;

SELECT * from user_info WHERE id=3208282   ####本人用户  #sessionID  msapiligh4t6is0n4giaoiuo84s1hf3
SELECT * from borrows WHERE user_id='3208282';
SELECT * from borrows_prepare WHERE user_id='3208282';
SELECT * from data_dict ORDER BY id desc;
SELECT * from gab_water_photo_log  WHERE user_id=3208282;

SELECT
                    	ufi.file_path AS idnum_photo
                    FROM
                    	user_file_info ufi
                    LEFT JOIN user_file_audit_info ufai ON ufi.file_audit_id = ufai.id
                    LEFT JOIN user_file_type_info ufti ON ufai.file_type_id = ufti.id
                    WHERE ufti.file_type_name='公安部水印照片' AND ufai.user_id=3208282
SELECT * from user_file_info  ORDER BY id desc limit 100;
SELECT * from user_file_audit_info WHERE user_id=3208282
SELECT * from finance_account WHERE user_id=3208282
SELECT * from finance_log WHERE user_id=3208282 ORDER BY id desc limit 100;
SELECT * from withdraw_cash WHERE user_id=3208282

SELECT * from borrows_raise

SELECT * from data_dict;
select pre_bo_id,advance_price from borrows_raise where bo_id=344258;


UPDATE user_info SET is_cheat = 1 WHERE is_cheat != 1 AND id IN (
            	SELECT br.user_id
            	FROM borrows_repayment br
            	LEFT JOIN borrows bo ON br.bo_id = bo.id
            	LEFT JOIN user_student_info usi ON br.user_id = usi.user_id
            	WHERE
            		usi.education = '本科'
            	AND bo.p_id IN (77, 83, 87)
            	AND (( br.br_is_repay = 0
            			AND DATE_ADD(br_time, INTERVAL 60 DAY) <= NOW()
            		)OR (
            			br.br_is_repay = 1
            			AND DATE_ADD(br_time, INTERVAL 60 DAY) <= br_repay_time
            		))) limit 2;


update user_info a set a.is_cheat = 1
                 where a.is_cheat != 1 and a.id in 
                 ( SELECT b.id FROM user_info b WHERE b.id in(
select br.user_id from borrows_repayment br
                 left join borrows bo on br.bo_id = bo.id
                 left join user_student_info usi on br.user_id = usi.user_id
                  where usi.education = '专科' and bo.p_id in (83,88)
                   and ( (br.br_is_repay = 0  and  DATE_ADD(br_time , INTERVAL 37 DAY) <= NOW())   
                          or  
                         (br.br_is_repay = 1  and  DATE_ADD(br_time , INTERVAL 37 DAY) <= br_repay_time)    
                       )
)) limit 10;




SELECT * from user_info WHERE user_id in(411603,411603)


                 select br.user_id from borrows_repayment br
                 left join borrows bo on br.bo_id = bo.id
                 left join user_student_info usi on br.user_id = usi.user_id
                  where usi.education = '专科' and bo.p_id in (83,88)
                   and ( (br.br_is_repay = 0  and  DATE_ADD(br_time , INTERVAL 37 DAY) <= NOW())   
                          or  
                         (br.br_is_repay = 1  and  DATE_ADD(br_time , INTERVAL 37 DAY) <= br_repay_time)    
                       ) limit 8
SELECT * from user_student_info ORDER BY id desc limit 1000;
SELECT * from products limit 100
SELECT * from borrows_repayment ORDER BY id desc LIMIT 1000;

SELECT * from gab_water_photo_log ORDER BY id desc limit 100;
SELECT * from user_info WHERE user_name='xinzhuce'  #5470565
SELECT * from borrows WHERE user_id=5470565;
SELECT * from borrows_prepare WHERE user_id=5470565;
SELECT * from borrows_repayment WHERE user_id=5470565
SELECT * from borrows_prepare_ext ORDER BY id desc limit 100;
SELECT * from user_student_info WHERE user_id=5470565
SELECT id from borrows_raise WHERE bp_id=2113
SELECT * from user_info WHERE mobile_num=15922020905

SELECT * from gab_water_photo_log WHERE user_id=3207350;

select * from site_flash_setting ORDER BY id desc 

select id, enabled, is_login,link,name,path,title,position,sort,type,am_id,create_time,create_time from site_flash_setting where 1=1 and type=2 and am_id is null and position='H5LP_simple' order by id desc limit 5 


SELECT * FROM user_approach_info ORDER BY id desc limit 100;
SELECT * from system_sms_log ORDER BY id desc limit 1000


SELECT * from system_sms_log WHERE LENGTH(mobilenum)>11 ORDER BY id desc  

SELECT * from borrows_dunning_contact ORDER BY id desc 


SELECT * from user_student_info WHERE user_id=7219398 ORDER BY id desc limit 100;