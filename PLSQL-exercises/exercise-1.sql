/*
a) Create PROCEDURE to print the list of all buildings that do not have employees
*/

create or replace procedure printBuildingsEmpty
AS
nameBullding Buildings.Building_name%type;
CURSOR bilding_emp_cursor IS SELECT B.BUILDING_NAME FROM BUILDINGS B
WHERE NOT EXISTS (SELECT BUILDING FROM EMPLOYEES E WHERE B.BUILDING_NAME = E.BUILDING );
begin
OPEN bilding_emp_cursor;
LOOP
FETCH bilding_emp_cursor into nameBullding;
EXIT WHEN bilding_emp_cursor%NOTFOUND;
print('Name Bulding is Empty : '||nameBullding);
end loop;
ClOSE bilding_emp_cursor;
end;


/*
Create FINCTION to return the name of employee that have the maximum employedyears
*/

CREATE OR REPLACE FUNCTION maximumEmployeeInTheService
RETURN VARCHAR2
AS
nameEmp VARCHAR2(50);
begin
select Name into nameEmp from (select e.*, ROW_NUMBER() over (order by YEARS_EMPLOYED desc) as row_num from Employees e)
where row_num=1;
return nameEmp ;
end;