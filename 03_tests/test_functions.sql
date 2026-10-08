   SET SERVEROUTPUT ON;

begin
   dbms_output.put_line('--- TESTING FUNCTIONS ---');
   dbms_output.put_line('Annual Salary (200k): ' || fn_annual_salary(200000));
   dbms_output.put_line('Years of Service (2020-01-01): ' || fn_years_of_service(to_date('2020-01-01',
                    'YYYY-MM-DD')));
   dbms_output.put_line('Tax on 600,000: ' || fn_calculate_tax(600000));
   dbms_output.put_line('Dept 20 Name: ' || fn_dept_name(20));
   dbms_output.put_line('Dept 99 Name (Invalid): ' || fn_dept_name(99));
end;
/