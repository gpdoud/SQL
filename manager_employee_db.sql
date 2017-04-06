-- drop all tables
drop table if exists employee;
drop table if exists manager;
-- create the tables
create table manager (
	id int primary key auto_increment,
	name varchar(50) not null
);

create table employee (
	id int primary key auto_increment,
	name varchar(50) not null,
	manager_id int,
	foreign key (manager_id)
	  references manager(id)
);