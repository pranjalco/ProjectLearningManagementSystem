-- Creating view to get information about students, course they are enrolled in and the grades.

CREATE VIEW student_course_grades AS
SELECT 
	s.first_name, 
    s.last_name, 
    s.email, 
    c.title AS course_name, 
    g.grade AS student_grade
FROM students s
LEFT JOIN grades g 
	USING (student_id)
LEFT JOIN enrollments 
	USING (student_id) 
LEFT JOIN courses c 
	USING(course_id);
-- ----------------------------------------------------------------------------------------------------

-- Creating view to get instructors and their course names

CREATE VIEW instructors_courses AS 
SELECT 
	i.first_name, 
    i.last_name,
    c.title AS course_title,
    c.course_description,
    c.duration_in_minutes AS course_duration_minutes
FROM instructors i 
LEFT JOIN courses c 
	ON i.instructor_id = c.instructor_id;

-- ----------------------------------------------------------------------------------------------------

-- instructor_course_feedback view for instructors to check rating and comments on course.

CREATE OR REPLACE VIEW instructor_course_feedback 
AS
SELECT 
	i.instructor_id,
	i.first_name,
    i.last_name,
    c.title AS course_name, 
    f.comment, 
    f.rating AS course_rating
FROM instructors i
LEFT JOIN courses c 
	USING (instructor_id)
LEFT JOIN feedback f 
	ON c.course_id = f.course_id;
    
-- ----------------------------------------------------------------------------------------------------