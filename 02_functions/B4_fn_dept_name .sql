create or replace function fn_dept_name (
   p_dept_id in number
) return varchar2 is
   v_dept_name departments.department_name%type;
begin
   select department_name
     into v_dept_name
     from departments
    where department_id = p_dept_id;

   return v_dept_name;
exception
   when no_data_found then
      return 'UNKNOWN DEPARTMENT';
   when others then
      return 'ERROR DETECTED';
end fn_dept_name;
/