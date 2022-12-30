-- ASSESSMENT TEST 3

	-- Create a new database called "School" this database should have two tables: teachers and students.

	-- The students table should have columns for student_id, first_name, last_name, homeroom_number,
	-- phone, email, and graduation year.

	-- The teachers table should have columns for teacher_id, first_name, last_name,
	-- homeroom_number, department, email, and phone.

	-- The constraints are mostly up to you, but your table constraints do have to consider the following:

	-- 1.  We must have a phone number to contact students in case of an emergency.

	-- 2. We must have ids as the primary key of the tables

	-- 3. Phone numbers and emails must be unique to the individual.

	-- Once you've made the tables, insert a student named Mark Watney (student_id=1)
	-- who has a phone number of 777-555-1234 and doesn't have an email.
	-- He graduates in 2035 and has 5 as a homeroom number.

	-- Then insert a teacher names Jonas Salk (teacher_id = 1)
	-- who as a homeroom number of 5 and is from the Biology department.
	-- His contact info is: jsalk@school.org and a phone number of 777-555-4321.

	--

-- Creating student table:

	-- CREATE TABLE students (
	-- 	student_id SERIAL PRIMARY KEY,
	-- 	first_name VARCHAR(30) NOT NULL CHECK(char_length(first_name) > 1),
	-- 	last_name VARCHAR(30) NOT NULL CHECK(char_length(last_name) > 1),
	-- 	homeroom_number INTEGER CHECK (homeroom_number > 0),
	-- 	phone CHAR(12) UNIQUE NOT NULL CHECK(phone SIMILAR TO '\d{3}-\d{3}-\d{4}'),
	-- 	email VARCHAR(50) UNIQUE CHECK(email SIMILAR TO '\S+@\S+\.\S+'),
	-- 	graduation_year SMALLINT NOT NULL CHECK(graduation_year >= EXTRACT(YEAR FROM CURRENT_DATE))
	-- );

-- Creating teachers table:

	-- CREATE TABLE teachers (
	-- 	teacher_id SERIAL PRIMARY KEY,
	-- 	first_name VARCHAR(30) NOT NULL CHECK(char_length(first_name) > 1),
	-- 	last_name VARCHAR(30) NOT NULL CHECK(char_length(last_name) > 1),
	-- 	homeroom_number INTEGER CHECK (homeroom_number > 0),
	-- 	department VARCHAR(50) NOT NULL CHECK(char_length(department) > 1),
	-- 	phone CHAR(12) UNIQUE NOT NULL CHECK(phone SIMILAR TO '\d{3}-\d{3}-\d{4}'),
	-- 	email VARCHAR(50) UNIQUE CHECK(email SIMILAR TO '\S+@\S+\.\S+')
	-- );
	
-- Inserting Mark Watney into School.students:

	-- INSERT INTO students(
	-- 	first_name,
	-- 	last_name,
	-- 	homeroom_number,
	-- 	phone,
	-- 	graduation_year
	-- )
	-- VALUES
	-- (
	-- 	'Mark',
	-- 	'Watney',
	-- 	5,
	-- 	'777-555-1234',
	-- 	2035
	-- );

-- Inserting Jonas Salk into School.teachers:

-- INSERT INTO teachers(
-- 	first_name,
-- 	last_name,
-- 	homeroom_number,
-- 	department,
-- 	phone,
-- 	email
-- )
-- VALUES
-- (
-- 	'Jonas',
-- 	'Salk',
-- 	5,
-- 	'Biology',
-- 	'777-555-4321',
-- 	'jsalk@school.org'
-- );

-- Querying:

	SELECT * FROM students;
	SELECT * FROM teachers;

-- DDL Shenanigans:

	-- ALTER TABLE students DROP CONSTRAINT students_email_check;

	-- ALTER TABLE students
	-- ADD CONSTRAINT students_email_check CHECK(email LIKE '%@%.%');
	-- ADD CONSTRAINT students_email_check CHECK(email SIMILAR TO '\S+@\S+\.\S+');

	-- DELETE FROM students
	-- WHERE first_name IN ('Jonas', 'Ben');