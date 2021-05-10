/*
Write an SQL query to print details of the employees whose last_name ends with ‘h’ and contains exactly six alphabets.
*/

select * from employees where last_name LIKE  '_____h';

-- Write an SQL query to print details of the employees whose SALARY lies within 6500 and 17499.

select * from employees where salary between 6500 and 17499;