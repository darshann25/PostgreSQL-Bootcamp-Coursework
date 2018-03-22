CREATE TABLE students (
	student_id serial PRIMARY KEY,
	first_name VARCHAR(200) NOT NULL,
	last_name VARCHAR(200) NOT NULL,
	homeroom_number integer CHECK(homeroom_number > 0),
	phone VARCHAR(15) UNIQUE NOT NULL CHECK(phone ~ '^[0-9]{3}-[0-9]{3}-[0-9]{4}$'),
	email VARCHAR(355) UNIQUE CHECK(email ~ '^[A-Za-z0-9._]*(|@)[A-Za-z0-9]*(|.)[A-Za-z]*'),
	grad_year integer CHECK(grad_year > 1920 AND grad_year < 2100)
);

-- DROP TABLE IF EXISTS students;

CREATE TABLE teachers (
	teacher_id serial PRIMARY KEY,
	first_name VARCHAR(200) NOT NULL,
	last_name VARCHAR(200) NOT NULL,
	homeroom_number integer CHECK(homeroom_number > 0),
	department VARCHAR(50),
	email VARCHAR(355) UNIQUE CHECK(email ~ '^[A-Za-z0-9._]*(|@)[A-Za-z0-9]*(|.)[A-Za-z]*$'),
	phone VARCHAR(15) UNIQUE NOT NULL CHECK(phone ~ '^[0-9]{3}-[0-9]{3}-[0-9]{4}$')
);

-- DROP TABLE IF EXISTS teachers;

INSERT INTO students(first_name, last_name, phone, email, grad_year, homeroom_number)
VALUES('Mark', 'Watney', '777-555-1234', '', 2035, 5);
SELECT * FROM students;

INSERT INTO teachers(first_name, last_name, homeroom_number, department, email, phone)
VALUES('Jonas', 'Salk', 5, 'Biology', 'jsalk@school.org', '777-555-4321');
SELECT * FROM teachers;