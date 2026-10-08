select employee_id,
       first_name
       || ' '
       || last_name as full_name,
       salary as monthly_salary,
       fn_annual_salary(salary) as annual_salary,
       fn_years_of_service(hire_date) as years_worked,
       fn_calculate_tax(salary) as estimated_tax,
       fn_dept_name(department_id) as department_name
  from employees;