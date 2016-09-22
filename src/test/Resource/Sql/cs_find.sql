select	o.id as ao_id,
                    o.ao_table,
                    o.table_id,
                    o.am_id,
                    o.ao_operation,
                    a.am_username,
            		o.create_time as date_create
                from admin_operation o
                inner join admin a on (a.id = o.am_id)
                where o.ao_table ='members' and table_id = 6810383

SELECT * from admin WHERE id=966

SELECT * from user_info WHERE user_name="xinzhuce";
SELECT * from user_student_info WHERE user_id=5470565


SELECT * from gab_water_photo_log WHERE user_id=5470565;
SELECT * from finance_account WHERE user_id=5470565