-- Write and SQL query to show all employees information that has higher salary than any employee in department 80.
SELECT * FROM employee
where salary >(SELECT max(salary) FROM employee WHERE department_id=80);

-- Merge the employee_ID and name columns from employee table 
-- and make them look like this [first last : id] and call it “Employee Info”.
SELECT
CONCAT(CONCAT(CONCAT(first_name, ' '),CONCAT(last_name,' : ')),employee_id)as "Employee Info"
FROM employee;