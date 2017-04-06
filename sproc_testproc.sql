-- stored procedure
drop procedure if exists testproc;
delimiter //
create procedure testproc()
begin
	select count(*) as 'Records' from `order`
end//
delimiter ;