create or replace function fn_years_of_service (
   p_hire_date in date
) return number is
begin
   if p_hire_date is null
   or p_hire_date > sysdate then
      return 0;
   end if;
   return trunc(months_between(
      sysdate,
      p_hire_date
   ) / 12);
end fn_years_of_service;
/