--Create a table that copy all employees table attributes but only copy department 80 employees.

create TABLE department80 as
select * from employee where department_id=80;


-- Define a sequence that starts from 20210001 and insert one row with this sequence.
create SEQUENCE seq
start WITH 20210001
INCREMENT by 1;


-- Write an SQL query to Show average salaries with two decimal point for each department in employee’s table.
select department_id,trunc(avg(salary),2)FROM employee
GROUP BY department_id ;


-- Write and sql query to modify all null values in commission_pct column and make it 0.01.

update employee
set commission_pct=0.01
WHERE commission_pct IS null ;