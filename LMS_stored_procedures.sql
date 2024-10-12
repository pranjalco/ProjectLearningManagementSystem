-- Creating Procedure to add new course

DROP PROCEDURE IF EXISTS add_course;

DELIMITER $$
CREATE PROCEDURE add_course
(
	p_title VARCHAR(150), 
    p_course_description TEXT, 
    p_duration_in_minutes INT, 
    p_instructor_id INT
)

BEGIN
	INSERT INTO courses (title, course_description, duration_in_minutes, instructor_id)
    VALUES (p_title, p_course_description, p_duration_in_minutes, p_instructor_id);
END $$
DELIMITER ;

CALL lms.add_course('Introduction_to_procreate', 'All Procreate Digital Illustration App courses', 180, 2);

-- ----------------------------------------------------------------------------------------------------

--  Enroll a Student in a Course

DROP PROCEDURE IF EXISTS  student_enrollment

DELIMITER $$
CREATE PROCEDURE student_enrollment 
(
	p_student_id INT,
    p_course_id INT
)

BEGIN
	INSERT INTO Enrollments (student_id, course_id, enrollment_date) 
    VALUES (p_student_id, p_course_id, CURDATE());
END $$
DELIMITER ;

CALL lms.student_enrollment(5, 10);

-- ----------------------------------------------------------------------------------------------------

-- To assign a grade for a student's submission.

DROP PROCEDURE IF EXISTS GradeAssignment;

DELIMITER $$

CREATE PROCEDURE GradeAssignment(
    IN p_assignment_id INT,
    IN p_student_id INT,
    IN p_grade VARCHAR(10)
)
BEGIN
    INSERT INTO Grades (assignment_id, student_id, grade) 
    VALUES (p_assignment_id, p_student_id, p_grade);
END $$

DELIMITER ;

CALL lms.GradeAssignment(6, 4, 'D');

-- ----------------------------------------------------------------------------------------------------

-- To retrieve all feedback for a specific course.

DROP PROCEDURE IF EXISTS GetCourseFeedback;

DELIMITER $$

CREATE PROCEDURE GetCourseFeedback(
    p_course_id INT
)
BEGIN
    SELECT s.first_name AS student_name, f.comment, f.rating 
    FROM feedback f
    JOIN students s ON f.student_id = s.student_id
    WHERE f.course_id = p_course_id;
END $$

DELIMITER ;

CALL lms.GetCourseFeedback(12);





