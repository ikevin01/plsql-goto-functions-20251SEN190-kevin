   SET SERVEROUTPUT ON;

/*
----------------------------------------------------------------------
ILLEGAL GOTO DEMONSTRATION (WILL NOT COMPILE):
----------------------------------------------------------------------
DECLARE
    v_flag BOOLEAN := TRUE;
BEGIN
    GOTO inside_if; -- ERROR: PLS-00375: illegal GOTO statement; it jumps into an IF statement

    IF v_flag THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Inside IF block');
    END IF;
END;
/
----------------------------------------------------------------------
*/

declare
   v_flag boolean := true;
begin
   if v_flag then
      dbms_output.put_line('Successfully executed without illegal GOTO jump into IF structure.');
   end if;
end;
/