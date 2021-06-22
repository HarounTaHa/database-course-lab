-- Write an SQL query to show the name of department that has the
--  maximum salary among all departments and also show that salary.
select depT.department_name ,salary from employee e ,department depT
WHERE e.salary=(select MAX(salary) from employee where e.department_id = depT.department_id);

-- Write and SQL query to show all employees information that has higher salary than all employees in department 80.
SELECT * FROM employee
where salary >(SELECT max(salary) FROM employee WHERE department_id=80);

-- Write an SQL query to show the employees with lowest 10 salaries of employee’s table
select * from (select e.*, ROW_NUMBER() over (order by salary ASC ) as row_num from employee e)
where row_num <= 10;

-- Create a view that shows the name and the salary for the employees at IT department only.
create view empview as select first_name , last_name,salary from employee
WHERE department_id=60;

-- Use right Padding function to add a hash ( # ) to all employees if their names have less than 20 characters.
select RPAD(first_name,20,'#')FROM employee;