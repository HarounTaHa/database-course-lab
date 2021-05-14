-- Write an SQL query to fetch the list of employees with different salaries.

SELECT * FROM employee e
inner join
(select salary,min(employee_id) as id FROM employee GROUP BY salary) grp_salary
on e.salary = grp_salary.salary and e.employee_id = grp_salary.id ;


-- Write an SQL query to show the second highest salary from a table.
select * from (select e.*, ROW_NUMBER() over (order by salary desc) as row_num from Employee e)
where row_num=2;


-- Write two SQL queries that remove all data inside a table.
-- 1- First sql query :-
DELETE FROM employee;
-- 2- Seconde sql query:-
TRUNCATE TABLE employee;


-- Use two ways to get all information about the employee with the lowest salary in employee table.
-- First sql query:-
SELECT * from employee WHERE salary = (select min(salary) FROM employee);
-- Seconde sql query:-

select * from (select e.*, ROW_NUMBER() over (order by salary ASC ) as row_num from Employee e) where row_num=1;