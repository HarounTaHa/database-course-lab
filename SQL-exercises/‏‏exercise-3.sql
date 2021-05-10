/*
Write an SQL query to print details of employees excluding last_name “Khoo” and “Gee” from employees table.
*/

select * from employees where last_name not in('Khoo','Gee');


/*
Write an SQL query to print details of the employees whose first_name contains ‘a’.
*/

select * from employees where first_name LIKE '%a%';




-- Write an SQL query to print details of the employees whose email ends with ‘a’.
select * from employees where email LIKE '%a';


