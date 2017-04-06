drop table if exists employee ;

drop table if exists pay_grade;

create table pay_grade (
	id varchar(4) primary key,
	description varchar(30) not null,
	active bool not null default 1,
	created datetime default CURRENT_TIMESTAMP,
	updated datetime,
	deleted datetime
);

INSERT pay_grade values('ES05','ES05 Pay Grade',1,CURRENT_TIMESTAMP, null, null);
INSERT pay_grade values('ES06','ES06 Pay Grade',1,CURRENT_TIMESTAMP, null, null);
INSERT pay_grade values('ES07','ES07 Pay Grade',1,CURRENT_TIMESTAMP, null, null);
INSERT pay_grade values('ES08','ES08 Pay Grade',1,CURRENT_TIMESTAMP, null, null);
INSERT pay_grade values('ES09','ES09 Pay Grade',1,CURRENT_TIMESTAMP, null, null);
INSERT pay_grade values('ES10','ES10 Pay Grade',1,CURRENT_TIMESTAMP, null, null);
INSERT pay_grade values('ES11','ES11 Pay Grade',1,CURRENT_TIMESTAMP, null, null);
INSERT pay_grade values('ES12','ES12 Pay Grade',1,CURRENT_TIMESTAMP, null, null);
INSERT pay_grade values('ES13','ES13 Pay Grade',1,CURRENT_TIMESTAMP, null, null);
INSERT pay_grade values('ES14','ES14 Pay Grade',1,CURRENT_TIMESTAMP, null, null);
INSERT pay_grade values('ES15','ES15 Pay Grade',1,CURRENT_TIMESTAMP, null, null);

create table employee (
	id varchar(6) primary key,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	pay_grade_id varchar(4) not null,
	step ENUM('1','2','3','4','5','6','7','8','9','10'),
	INDEX pay_grade_idx (pay_grade_id),
	FOREIGN KEY (pay_grade_id)
		REFERENCES pay_grade(id)
);

INSERT employee values ('100001','Greg','Doud','ES05',1);
INSERT employee values ('100002','Cindy','Doud','ES15',10);
INSERT employee values ('100003','Nick','Doud','ES10',5);
INSERT employee values ('100004','Ken','Doud','ES10',5);
