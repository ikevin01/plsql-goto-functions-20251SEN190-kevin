create or replace function fn_calculate_tax (
   p_salary in number
) return number is
   v_tax number := 0;
begin
   if p_salary is null
   or p_salary <= 100000 then
      v_tax := 0;
   elsif p_salary between 100001 and 500000 then
      v_tax := p_salary * 0.15;
   else
      v_tax := p_salary * 0.30;
   end if;
   return v_tax;
end fn_calculate_tax;
/