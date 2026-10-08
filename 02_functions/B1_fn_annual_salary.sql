create or replace function fn_annual_salary (
   p_monthly_salary in number
) return number is
begin
   if p_monthly_salary is null
   or p_monthly_salary < 0 then
      return 0;
   end if;
   return p_monthly_salary * 12;
end fn_annual_salary;
/