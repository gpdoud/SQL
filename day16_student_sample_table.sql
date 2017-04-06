drop table if exists assignment;

drop table if exists student;

create table student (
	id int primary key,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	years_of_experience int not null,
	start_date date not null
);

insert student values(100,'Eric','Ephram',2,'2016-03-31');
insert student values(110,'Greg','Gould',6,'2016-09-30');
insert student values(120,'Adam','Ant',5,'2016-06-02');
insert student values(130,'Howard','Hess',1,'2016-02-28');
insert student values(140,'Charles','Caldwell',7,'2016-05-07');
insert student values(150,'James','Joyce',9,'2016-08-27');
insert student values(160,'Doug','Dumas',13,'2016-07-04');
insert student values(170,'Kevin','Kraft',3,'2016-04-15');
insert student values(180,'Frank','Fountain',8,'2016-01-31');
insert student values(190,'Brian','Biggs',4,'2015-12-25');

create table assignment (
	id int primary key, 
	student_id int not null,
	assignment_nbr int not null,
	grade varchar(30), 
	index student_id_idx (student_id), 
	foreign key (student_id) 
		references student(id)
);

create table grade (
	id int primary key,
	description varchar(30) not null
);

insert grade values(0,'Complete and satisfactory');
insert grade values(2,'Complete and unsatisfactory');
insert grade values(1,'Exceeds expectations');
insert grade values(3,'Incomplete');
insert grade values(4,'Not graded');

create index grade_id_idx 
	on assignment(grade_id);

alter table assignment add 
	constraint fk_grade_id 
	foreign key (grade_id) 
	references grade(id);