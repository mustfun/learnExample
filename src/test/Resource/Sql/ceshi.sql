SELECT b.username,b.real_name,a.* FROM `gab_water_photo_log` a LEFT JOIN user_info b ON a.user_id=b.id  WHERE b.id=3205496;

SELECT * from borrows_repayment ORDER BY id desc LIMIT 1000;

select TIMESTAMPDIFF(day,'2016-08-24','2016-08-22') as diff;


SELECT sum(TIMESTAMPDIFF(DAY,br_time,br_repay_time)) as overduldays FROM borrows_repayment br WHERE br.user_id = 5469896 
					AND (br.br_is_repay IN(1,2)  AND br.br_repay_time > DATE_ADD(br.br_time,INTERVAL 1  DAY)) AND DATE_ADD(br.br_time,INTERVAL 12 MONTH)>NOW();

SELECT * from data_dict ORDER BY id desc limit 100;

SELECT * from user_info WHERE id=5470108

SELECT * from user_info WHERE id_num=321321199502120032 ORDER BY id DESC LIMIT 1000;

SELECT
                    	ufi.* 
                    FROM
                    	user_file_info ufi
                    LEFT JOIN user_file_audit_info ufai ON ufi.file_audit_id = ufai.id
                    LEFT JOIN user_file_type_info ufti ON ufai.file_type_id = ufti.id
                    WHERE ufti.file_type_name='公安部水印照片' AND ufai.user_id=5470109

SELECT * from data_dict ORDER BY id DESC;

SELECT * from user_info WHERE id_num=420116199507261433
SELECT * from borrows WHERE user_id=3208282
SELECT * from user_info WHERE id=3206277

SELECT * from gab_water_photo_log WHERE code=0  GROUP BY user_id  HAVING count(1)>1 ORDER BY id asc;
SELECT user_id,code,info from gab_water_photo_log WHERE code=0 and user_id=5470109

SELECT * from borrows_raise

SELECT * from borrows_repayment ORDER BY id desc limit 1000;
SELECT * from borrows_bidding  WHERE user_id=3208282 ORDER BY id desc limit 1000;
SELECT * from withdraw_cash ORDER BY id desc limit 100;
SELECT * from borrows ORDER BY id desc limit 100;
SELECT * from borrows WHERE user_id=3208282;
SELECT * from borrows_prepare WHERE user_id=3208282;

SELECT * from user_info WHERE id=3208282;

select orders_id,pay_id FROM kuaiq_orders WHERE product_type = '10' AND order_status = '0'
SELECT * from user_info WHERE id_num=420116199507261433

SELECT * from withdraw_cash WHERE user_id=3208282
SELECT * from kuaiq_orders ORDER BY id desc limit 1000;
SELECT * from borrows_repayment WHERE user_id=3208282
SELECT * from borrows_prepare_ext WHERE bp_id=556019 ORDER BY id desc limit 1000;


SELECT * from user_info WHERE id=86545598

SELECT * from borrows WHERE id=344647


SELECT * from borrows_repayment ORDER BY id desc LIMIT 1000;

SELECT *,sum(br_price),SUM(br_price_b),SUM(br_price_l),sum(br_service_fee) from borrows_repayment WHERE user_id=86545598
SELECT borro from borrows_repayment


 select * from data_dict order by id desc ;
SELECT * from borrows WHERE id=344647;

SELECT * from user_bankcard_auth ORDER BY id desc limit 1000;
SELECT * from user_bankcard_info ORDER BY id desc limit 1000;


CREATE TABLE `user_alipay_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `alipay_no` varchar(80) DEFAULT NULL COMMENT '支付宝账号',
  `last_used_time` datetime DEFAULT NULL COMMENT '最后使用时间',
  `in_money` decimal(18,2) DEFAULT '0.00' COMMENT '支付宝收款金额',
  `out_money` decimal(18,2) DEFAULT '0.00' COMMENT '支付宝付款金额',
  `is_default` tinyint(2) DEFAULT NULL COMMENT '是否默认使用',
  `is_deleted` tinyint(1) DEFAULT '0' COMMENT '是否删除(0有效，1删除)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `creater` bigint(20) DEFAULT NULL COMMENT '创建者',
  `updater` bigint(20) DEFAULT NULL COMMENT '更新者',
  `version` int(11) NOT NULL DEFAULT '1' COMMENT '版本',
  PRIMARY KEY (`id`),
  KEY `user_id_key` (`user_id`),
  KEY `bank_card_no` (`alipay_no`)
) ENGINE=InnoDB AUTO_INCREMENT=400800 DEFAULT CHARSET=utf8 COMMENT='用户支付宝表';

