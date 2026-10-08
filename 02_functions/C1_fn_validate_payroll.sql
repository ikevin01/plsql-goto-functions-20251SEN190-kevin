create or replace function fn_validate_payroll (
   p_emp_id in number
) return varchar2 is
   v_salary    employees.salary%type;
   v_hire_date employees.hire_date%type;
   v_dept_id   employees.department_id%type;
   v_tax       number;
begin
   select salary,
          hire_date,
          department_id
     into
      v_salary,
      v_hire_date,
      v_dept_id
     from employees
    where employee_id = p_emp_id;

   if v_salary is null
   or v_salary <= 0 then
      return 'INVALID: Missing or non-positive salary';
   end if;
   v_tax := fn_calculate_tax(v_salary);
   return 'VALID: Net Tax calculated = ' || v_tax;
exception
   when no_data_found then
      return 'INVALID: Employee ID does not exist';
   when others then
      return 'ERROR: Payroll validation failed';
end fn_validate_payroll;
/