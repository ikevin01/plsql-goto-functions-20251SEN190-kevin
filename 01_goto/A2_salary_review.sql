   SET SERVEROUTPUT ON;

declare
   cursor c_emp is
   select employee_id,
          first_name,
          salary
     from employees;
begin
   for r_emp in c_emp loop
      if r_emp.salary is null then
         goto null_salary;
      elsif r_emp.salary < 200000 then
         goto low_salary;
      elsif r_emp.salary between 200000 and 500000 then
         goto mid_salary;
      else
         goto high_salary;
      end if;

      << low_salary >> dbms_output.put_line(r_emp.first_name
                                            || ' (ID: '
                                            || r_emp.employee_id || ') - Salary Bracket: LOW');
      goto next_emp;
      << mid_salary >> dbms_output.put_line(r_emp.first_name
                                            || ' (ID: '
                                            || r_emp.employee_id || ') - Salary Bracket: MEDIUM');
      goto next_emp;
      << high_salary >> dbms_output.put_line(r_emp.first_name
                                             || ' (ID: '
                                             || r_emp.employee_id || ') - Salary Bracket: HIGH');
      goto next_emp;
      << null_salary >> dbms_output.put_line(r_emp.first_name
                                             || ' (ID: '
                                             || r_emp.employee_id || ') - Salary Bracket: NOT SPECIFIED');
      goto next_emp;
      << next_emp >> null; -- Null statement required for label before end of loop iteration
   end loop;
end;
/