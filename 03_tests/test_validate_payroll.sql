   SET SERVEROUTPUT ON;

begin
   dbms_output.put_line('--- TESTING PAYROLL VALIDATOR ---');
   dbms_output.put_line('Emp 101: ' || fn_validate_payroll(101));
   dbms_output.put_line('Emp 104 (Null Salary): ' || fn_validate_payroll(104));
   dbms_output.put_line('Emp 999 (Non-existent): ' || fn_validate_payroll(999));
end;
/