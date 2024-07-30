-- drop role if exists 'sales';
create role 'sales';
grant select, insert, update on final.products to 'sales';

-- drop user if exists 'Michael'; 
create user 'Michael' identified by 'ABC123';
alter user 'Michael' password expire;
grant insert on final.product_plans to 'Michael';
grant 'sales' to 'Michael';