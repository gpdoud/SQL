CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Student`(
	IN FirstName varchar(30), 
	IN LastName varchar(30), 
	IN SAT int, 
	IN GPA Decimal(5,1), 
	IN MajorDescription varchar(50)
)
BEGIN
    DECLARE MajorId int;
	-- Check SAT between 400 and 1600 inclusive
	IF SAT < 400 OR SAT > 1600 THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'SAT is out of range (400 <= x <= 1600)';
	END IF;
    -- Check GPA between 0 <= x <= 5.0
    IF GPA < 0.0 OR GPA > 5.0 THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'GPA is out of range (0 <= x <= 5.0)';
	END IF;
    -- Get the major.id from major where major.description is eq MajorDescriptio
    SELECT id into MajorId from major where description = MajorDescription;
    IF MajorId is NULL THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'No major found with description';
    END IF;
    -- All data edited, insert the student
    INSERT student (first_name, last_name, sat, gpa, major_id)
		VALUES (FirstName, LastName, SAT, GPA, MajorId);
END