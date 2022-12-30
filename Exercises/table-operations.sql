-- CREATE TABLE

-- CREATE TABLE account (
-- 	user_id SERIAL PRIMARY KEY,
-- 	username VARCHAR(50) UNIQUE NOT NULL,
-- 	password VARCHAR(50) NOT NULL,
-- 	email VARCHAR(250) UNIQUE NOT NULL,
-- 	created_on TIMESTAMP NOT NULL,
-- 	last_login TIMESTAMP
-- )

-- CREATE TABLE job (
-- 	job_id SERIAL PRIMARY KEY,
-- 	job_name VARCHAR(200) UNIQUE NOT NULL
-- )

-- CREATE TABLE account_job (
-- 	user_id INTEGER REFERENCES account(user_id),
-- 	job_id INTEGER REFERENCES job(job_id),
-- 	hire_date TIMESTAMP
-- )

-- INSERT

-- INSERT INTO account(username, password, email, created_on)
-- VALUES ('Jose', 'password', 'jose@mail.com', CURRENT_TIMESTAMP);

-- INSERT INTO job (job_name)
-- VALUES ('Astronaut');

-- INSERT INTO account_job(user_id, job_id, hire_date)
-- VALUES (1, 1, CURRENT_TIMESTAMP);

-- UPDATE

-- UPDATE account
-- SET username = 'Maria',
-- email = 'maria@mail.com';

-- UPDATE account
-- SET last_login = CURRENT_TIMESTAMP
-- RETURNING email, created_on, last_login;

-- UPDATE account_job
-- SET hire_date = account.created_on
-- FROM account
-- WHERE account_job.user_id = account.user_id;

-- DELETE

-- DELETE FROM job
-- WHERE job_id = 3;

-- ALTER TABLE

-- CREATE TABLE information(
-- 	info_id SERIAL PRIMARY KEY,
-- 	title VARCHAR(500) NOT NULL,
-- 	person VARCHAR(50) NOT NULL UNIQUE
-- );

-- Renaming the table:
-- ALTER TABLE information
-- RENAME TO new_info;

-- Renaming a column:
-- ALTER TABLE new_info
-- RENAME COLUMN person TO people;

-- Dropping a constraint:
-- ALTER TABLE new_info
-- ALTER COLUMN people DROP NOT NULL;

-- Dropping a column:
-- ALTER TABLE new_info
-- DROP COLUMN IF EXISTS people;

-- SELECT * FROM new_info;

--

-- SELECT * FROM account;
-- SELECT * FROM job;
-- SELECT * FROM account_job;