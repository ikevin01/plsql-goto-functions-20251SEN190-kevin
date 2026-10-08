   SET SERVEROUTPUT ON;

declare
   v_num number := nvl(
      &input_number,
      0
   );
begin
   if v_num > 0 then
      dbms_output.put_line('The number '
                           || v_num || ' is positive.');
   elsif v_num < 0 then
      dbms_output.put_line('The number '
                           || v_num || ' is negative.');
   else
      dbms_output.put_line('The number is ZERO.');
   end if;

   dbms_output.put_line('Classification finished.');
end;
/