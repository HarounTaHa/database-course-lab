/* 
 Create PROCEDURE to print all employees' names and their grades based on the
following rules.
If employee have 1 to 4 years employed his grade will be A
If employee have 5 to 7 years employed his grade will be B
If employee have 8 to 9 years employed his grade will be C
*/
CREATE OR REPLACE PROCEDURE printAllGradeEmployees
AS
CURSOR emp_cursor IS select NAME,YEARS_EMPLOYED FROM Employees;
begin
for x in emp_cursor
loop
if x.YEARS_EMPLOYED >=1 and x.YEARS_EMPLOYED <= 4 THEN
print('Name : ' ||x.name||'------ Grade : A');
elsif x.YEARS_EMPLOYED >=5 and x.YEARS_EMPLOYED <= 7 THEN
print('Name : ' ||x.name||'-----Grade : B');
elsif x.YEARS_EMPLOYED >=8 and x.YEARS_EMPLOYED <= 9 THEN
print('Name : ' ||x.name||'------Grade : C');
END IF;
end loop;
end;