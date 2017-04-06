drop table if exists assignment;
drop table if exists grade;
drop table if exists student;
drop table if exists major_class;
drop table if exists student_class;
drop table if exists major;
drop table if exists class;

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

create table grade (
	id int primary key,
	description varchar(30) not null
);

insert grade values(2,'Exceeds expectation');
insert grade values(1,'Complete and satisfactory');
insert grade values(0,'Not graded');
insert grade values(-1,'Complete and unsatisfactory');
insert grade values(-2,'Incomplete');

create table assignment (
	id int primary key,
	student_id int not null,
	assignment_nbr int not null,
	grade_id int not null
);
create index student_id_idx 
  on student(id);

alter table assignment 
  add constraint fk_student_id 
  foreign key (student_id) references student(id);

create index grade_id_idx 
  on assignment(grade_id);

alter table assignment 
  add constraint fk_grade_id 
  foreign key (grade_id) references grade(id);

create table major (
  id int primary key,
  description varchar(30) not null
);

insert major values (0,'Business');
insert major values (1,'Math');
insert major values (2,'Computer Science');
insert major values (3,'Engineering');
insert major values (4,'Education');
insert major values (5,'History');

create table class (
  id int primary key auto_increment,
  description varchar(30) not null
);

insert class (description) values ('English 101');
insert class (description) values ('Math 101');
insert class (description) values ('History 101');
insert class (description) values ('Computer Science 101');
insert class (description) values ('Psychology 101');
insert class (description) values ('Education 101');

create table major_class (
  major_id int not null,
  class_id int not null,
  index major_id_idx (major_id),
  foreign key (major_id) references major(id),
  index class_id_idx (class_id),
  foreign key (class_id) references class(id)
);

create table student_class (
  student_id int not null,
  class_id int not null,
  index student_id_idx (student_id),
  foreign key (student_id) references student(id),
  index class_id_idx (class_id),
  foreign key (class_id) references class(id)
);


