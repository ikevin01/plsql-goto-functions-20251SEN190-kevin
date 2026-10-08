   SET SERVEROUTPUT ON;

-- Drop tables if they exist
begin
   execute immediate 'DROP TABLE employees CASCADE CONSTRAINTS';
   execute immediate 'DROP TABLE departments CASCADE CONSTRAINTS';
exception
   when others then
      null;
end;
/

-- Create departments table
create table departments (
   department_id   number primary key,
   department_name varchar2(50) not null
);

-- Create employees table
create table employees (
   employee_id   number primary key,
   first_name    varchar2(50),
   last_name     varchar2(50),
   salary        number(10,2),
   hire_date     date,
   department_id number,
   constraint fk_dept foreign key ( department_id )
      references departments ( department_id )
);

-- Insert  data
insert into departments values
   ( 10,
     'Administration' );
insert into departments values
   ( 20,
     'Information Technology' );
insert into departments values
   ( 30,
     'Finance' );

insert into employees values
   ( 101,
     'Kevin',
     'Ishimwe',
     250000.00,
     to_date('2021-03-15','YYYY-MM-DD'),
     20 );
insert into employees values
   ( 102,
     'Alice',
     'Mugabo',
     150000.00,
     to_date('2019-06-01','YYYY-MM-DD'),
     10 );
insert into employees values
   ( 103,
     'Bob',
     'Nkurunziza',
     800000.00,
     to_date('2023-01-10','YYYY-MM-DD'),
     30 );
insert into employees values
   ( 104,
     'Grace',
     'Uwineza',
     null,
     to_date('2024-02-01','YYYY-MM-DD'),
     20 );

commit;