-- Starting to create tables in database

CREATE TABLE IF NOT EXISTS students(
	student_id INT PRIMARY KEY AUTO_INCREMENT, 
    first_name VARCHAR(50) NOT NULL, 
    last_name VARCHAR(50) NOT NULL, 
    email VARCHAR(150) UNIQUE
);

CREATE TABLE IF NOT EXISTS instructors(
	instructor_id INT PRIMARY KEY AUTO_INCREMENT, 
    first_name VARCHAR(50) NOT NULL, 
    last_name VARCHAR(50) NOT NULL, 
    specialization VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS courses(
	course_id INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(150) NOT NULL, 
    course_description TEXT NOT NULL, 
    duration_in_minutes INT NOT NULL, 
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
		ON UPDATE CASCADE
        ON DELETE NO ACTION
);

CREATE TABLE IF NOT EXISTS Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
		ON UPDATE CASCADE 
        ON DELETE NO ACTION,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id) 
		ON UPDATE CASCADE 
        ON DELETE NO ACTION
);

CREATE TABLE IF NOT EXISTS Feedback (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT,
    student_id INT,
    `comment` TEXT,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
		ON UPDATE CASCADE
        ON DELETE NO ACTION,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
		ON UPDATE CASCADE 
        ON DELETE NO ACTION
);

CREATE TABLE IF NOT EXISTS Assignments (
    assignment_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT,
    title VARCHAR(255),
    description TEXT,
    due_date DATE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
		ON UPDATE CASCADE 
        ON DELETE NO ACTION
);

CREATE TABLE IF NOT EXISTS Grades (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    assignment_id INT,
    student_id INT,
    grade VARCHAR(10),
    FOREIGN KEY (assignment_id) REFERENCES Assignments(assignment_id)
		ON UPDATE CASCADE
        ON DELETE NO ACTION,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
		ON UPDATE CASCADE 
        ON DELETE NO ACTION
);

-- Table creation process finished








