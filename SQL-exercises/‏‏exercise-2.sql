/*
Write an SQL query to fetch unique values of department_id from employees’ table.
*/

select distinct department_id from employees;


/*
Write an SQL query to print all employee details from employees table sorted based on first_name ascending.
*/
select * from employees order by first_name asc;



-- Write an SQL query to print all employee details from employees table sorted based on last_name ascending and department_id descending.
select * from employees order by department_id desc , last_name asc;



-- Write an SQL query to print details for employees with the first_name as “Lex” and “Den” from employees table.
select * from employees where first_name LIKE '_e_';