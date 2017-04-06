use tiy;
-- Major for student
select concat(s.first_name,' ',s.last_name) as 'Name', m.description as 'Major'
	from student s
	join major m
		on s.major_id = m.id;
-- Classes required for major
select m.description as 'Major', concat(c.subject, ' ',c.section) as 'Class', 'Required'
	from major m
	join major_class_relationship mc
		on m.id = mc.major_id
	join class c
		on c.id = mc.class_id;
-- Classes taken by students
select concat(s.first_name,' ',s.last_name) as 'Name', concat(c.subject, ' ',c.section) as 'Class', 'Taken'
	from student s
	join student_class_relationship sc
		on s.id = sc.student_id
	join class c
		on c.id = sc.class_id;
-- Classes remaining for a student of a major
select concat(s.first_name,' ',s.last_name) as 'Name', concat(c.subject, ' ',c.section) as 'Class', 'Remaining'
	from student s
	join major m
		on s.major_id = m.id
	join major_class_relationship mc
		on m.id = mc.major_id
	join class c
		on c.id = mc.class_id
where c.id not in (
			select c.id
				from student s
				join student_class_relationship sc
					on s.id = sc.student_id
				join class c
					on c.id = sc.class_id
		);