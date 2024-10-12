# Learning Management System (LMS) Database

## Project Overview

This project is a **Learning Management System (LMS)** database, designed to manage and organize information for an online learning platform. The database allows for efficient handling of courses, students, instructors, assignments, grades, and feedback. It models the relationships between these entities and provides structured storage and retrieval of relevant data.

### Key Features:
- **Students**: Stores details about students such as name, email, and enrollment dates.
- **Courses**: Manages course information including title, description, duration, and instructor.
- **Instructors**: Tracks instructor details like name and area of specialization.
- **Assignments**: Stores assignments linked to courses and tracks due dates.
- **Enrollments**: Links students to courses to record their enrollment information.
- **Grades**: Stores student grades for specific assignments.
- **Feedback**: Allows students to provide feedback on courses with ratings and comments.

This database supports various queries to retrieve information about student progress, course enrollments, instructor details, and feedback, making it ideal for managing online learning environments.


---------------------------------------------------------------------------------------------------------------------

# Features

## Views

### `student_course_grades`
- **Description**: This view provides information about students, the courses they are enrolled in, and their grades.

### `instructors_courses`
- **Description**: A view to get the names of instructors and the courses they are teaching.

### `instructor_course_feedback`
- **Description**: This view allows instructors to check the rating and comments on their courses.


## Stored Procedures

### `add_course`
- **Description**: A stored procedure to add a new course to the database.

### `student_enrollment`
- **Description**: A stored procedure to enroll a student in a course, ensuring no duplicate enrollments.

### `GradeAssignment`
- **Description**: A stored procedure to assign or update a grade for a student's submission in an assignment.

### `GetCourseFeedback`
- **Description**: A stored procedure to retrieve all feedback for a specific course, including ratings and comments.


# Instructions

## Folder Structure

The project folder contains separate SQL files for views and stored procedures, along with 3 PDF files that represent different models of the database:

- **SQL Files**:
  - `LMS_table_creation.sql`: Script to create all necessary tables.
  - `LMS_Inserting_data_into_tables.sql`: Script to insert sample data into the tables.
  - `LMS_views.sql`: Script to create views (views folder)(`student_course_grades`, `instructors_courses`, `instructor_course_feedback`).
  - `LMS_stored_procedures.sql`: Script to create stored procedures (procedures folder)(`add_course`, `student_enrollment`, `GradeAssignment`, `GetCourseFeedback`).

- **PDF Files**:
  - `Learning_Management_System_Conceptual.pdf`: Conceptual model of the database.
  - `Learning_Management_System_Logical.pdf`: Logical model of the database.
  - `Learning_Management_System_Physical_Model.pdf`: Physical model of the database.

## Setting Up the Database using MySQL Workbench

1. **Install MySQL Workbench**:
   - Ensure that MySQL Workbench is installed on your system. You can download it from [MySQL Official Website](https://dev.mysql.com/downloads/workbench/).

2. **Create the Database**:
   - Open **MySQL Workbench** and connect to your MySQL server.
   - In the toolbar, click on the **SQL Editor**.
   - Run the following command in the query window to create the database:
     ```sql
     CREATE DATABASE lms;
     ```
   - Press **Execute** (the lightning bolt icon) to create the database.

3. **Open and Run SQL Files**:

   - **Create Tables**:
     - Open **MySQL Workbench**.
     - In the menu, go to **File > Open SQL Script...** and select the `LMS_table_creation.sql` file from your project.
     - In the query window, press **Execute** (lightning bolt icon) to run the script, which will create all necessary tables (e.g., `Courses`, `Students`, `Instructors`).

   - **Insert Sample Data**:
     - Go to **File > Open SQL Script...** again and open the `LMS_Inserting_data_into_tables.sql` file.
     - Press **Execute** to insert the sample data into your tables.


4. **Create Views and Stored Procedures**:
   
   - **Create Views**:
     - Open the `LMS_views.sql` file in MySQL Workbench.
     - Execute the script to create the views such as `student_course_grades`, `instructors_courses`, and `instructor_course_feedback`.

   - **Create Stored Procedures**:
     - Similarly, open the `LMS_stored_procedures.sql` file.
     - Execute the script to create the stored procedures like `add_course`, `student_enrollment`, `GradeAssignment`, and `GetCourseFeedback`.

5. **Verify the Setup**:
   - To verify that everything is set up correctly, you can execute `SELECT` queries in MySQL Workbench. For example:
     ```sql
     SELECT * FROM Students;
     ```
   - Press **Execute** to see the data returned in the result grid below.

6. **Using the Database**:
   - Make sure that the **lms** is selected by running:
     ```sql
     USE lms;
     ```
   - This ensures that all queries are executed on the correct database.

## Conclusion

By following these steps, you will have successfully set up the **Learning Management System (LMS)** database using MySQL Workbench. You can review the conceptual, logical, and physical models in the provided PDF files for additional insights into the database structure.
