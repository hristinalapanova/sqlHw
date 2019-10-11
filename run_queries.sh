# TODO: Write queries to display:

# Employees working at macys
SELECT * FROM employee JOIN job ON employee.ssn=job.ssn WHERE job.company LIKE 'Macy%';
# Companies in Boston
SELECT compnay FROM employee JOIN job ON employee.ssn=job.ssn WHERE employee.city='Boston';
# Employee with the highest salary

SELECT employee FROM employee JOIN job ON employee.ssn=job.ssn WHERE job.salary=(SELECT max(salary) FROM job);