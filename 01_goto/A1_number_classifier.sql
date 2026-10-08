   SET SERVEROUTPUT ON;

declare
   v_num number := nvl(
      &input_number,
      0
   ); -- Fallback to 0 if null
begin
   if v_num > 0 then
      goto pos_label;
   elsif v_num < 0 then
      goto neg_label;
   else
      goto zero_label;
   end if;

   << pos_label >> dbms_output.put_line('The number ' || v_num || ' is positive.');
   goto end_label;
   << neg_label >> dbms_output.put_line('The number '  || v_num || ' is negative.');
   goto end_label;
   << zero_label >> dbms_output.put_line('The number is ZERO.');
   goto end_label;
   << end_label >> dbms_output.put_line('Classification finished.');
end;
/