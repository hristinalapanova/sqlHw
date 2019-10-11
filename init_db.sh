# TODO: Create database and initialize database table structure
psql 
CREATE DATABASE sqlhomework;

\c sqlhomework;

CREATE TABLE employee(
    ssn VARCHAR(50) PRIMARY KEY,
    first VARCHAR(50),
    last VARCHAR(50),
    year_of_birth VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE job(
    ssn VARCHAR(50),
    company VARCHAR(50),
    salary INTEGER,
    experienc INTEGER
);

ALTER TABLE job
ADD CONSTRAINT fk_employee_ssn
FOREIGN KEY (ssn)
REFERENCES employee (ssn);


# TODO: Insert data into tables
COPY employee FROM '/Users/hristinalapanova/Desktop/cognizant/databases/sql-joins-lab/starter-code/employees.csv'  DELIMITER ',' CSV;

COPY job FROM '/Users/hristinalapanova/Desktop/cognizant/databases/sql-joins-lab/starter-code/jobs.csv'  DELIMITER ',' CSV;