create database employee_db_bpl;

use  employee_db_bpl;

create table employee_tbl(
id int not null primary key auto_increment,
ename varchar(200) not null,
dob date,
company varchar(100) not null,
salary int not null,
experience int not null);
describe employee_tbl;


alter table employee_tbl
add column fname varchar(200) not null after ename,
add column mname varchar(200) not null after fname,
add column phone int not null after mname,
add column email varchar(200) not null after phone,
add column city varchar(200) not null after email,
add column state varchar(200) not null after city,
add column country varchar(200) not null after state,
add column pincode varchar(200) not null after country;
describe  employee_tbl;

  -- increase the varchar size of all the columns to 400
  
alter table employee_tbl
modify column company varchar(400) not null,
modify column fname varchar(400) not null,
modify column mname varchar(400) not null,
modify column email varchar(400) not null,
modify column city varchar(400) not null,
modify column state varchar(400) not null,
modify column country varchar(400) not null,
modify column pincode varchar(400) not null;
describe employee_tbl;

 --  to change the position of city, state, country, pincode after email
 alter table employee_tbl
 modify column city varchar(400) not null after email,
 modify column state varchar(400) not null after city,
 modify column country varchar(400) not null after state,
 modify column pincode varchar(400) not null after country; 
 describe employee_tbl;
 
  --  to rename all the columns by preciding it with emp
alter table employee_tbl
rename column id to emp_id,
rename column ename to emp_ename,
rename column fname to emp_fname,
rename column mname to emp_mname,
rename column phone to emp_phone,
rename column email to emp_email,
rename column city to emp_city,
rename column state to emp_state,
rename column country to emp_country,
rename column pincode to emp_pincode,
rename column dob to emp_dob_date,
rename column company to emp_company,
rename column salary to emp_salary,
rename column experience to emp_experience;
describe employee_tbl;

insert into employee_tbl values(1,'Sachin','Ram','Sitha',197871962,'sachin@123.com','mumbi','maharastra','India','560091','1973-04-24','BCCI',10000,20);
insert into employee_tbl values(2, 'Arjun' ,'Shreyas','Roop',197871964,'arjun@gmail.com', 'Karwar','Karnataka','India',567228 ,'2004-12-21','ab22',10000,20); 
insert into employee_tbl values(3,'Kalki' ,'sathish','suma',197871965,'kal@123.com', 'Shivmogga','Karnataka','India' ,562168,'2004-12-22','ab33',100000,3);
insert into employee_tbl values(4 ,'Deepak', 'Yash','Shreya',197871966 ,'deepak@gmail.com','Mysuru','Karnataka' ,'India',567748,'2002-02-19','ab221' ,1000000,22);  
insert into employee_tbl values(5 ,'Chethan','Lokesh','Siri',197871967 ,'chethan@gmail.com','Chitradurga' ,'Karnataka','India',563868,'2001-09-24' ,'a332',200000,12);
insert into employee_tbl values(6, 'Dheeraj', 'Chandan', 'Maya' ,197871966,'dheeraj@gmail.com' ,'Bagalkot','Karnataka','India',567348 ,'2006-03-01','dcompany',100000,1);
insert into employee_tbl values(7,'Vishal','Ravi','Keerti',1978564178 ,'vishal@gmail.com', 'Bagalkot','Karnataka' ,'India',567348,'2003-03-02','vcompany' ,1000000,10);
insert into employee_tbl values(8, 'Kava','Khush','Khushi' ,996417800,'kavan@gmail.com','Kodagu' ,'Karnataka','India',567658,'2002-01-23' ,'kcompany',10000,3);
insert into employee_tbl values(9,'Esha','Chandra','Lavanya' ,74445413,'esha@gmail.com','Mysuru' ,'Karnataka','India',567333,'2002-07-24' ,'ecompany',250000,7); 
insert into employee_tbl values(10,'Shashank','Basavraj','Maya' ,722654132,'shashank@gmail.com','Sirsi' ,'Karnataka','India',569648,'2002-11-4' ,'scompany',3000000,20);
select * from employee_tbl;

-- Fetching Operations

select * from employee_tbl;

select * from employee_tbl where emp_id = 4;

select * from employee_tbl where emp_salary > 10000;

select * from employee_tbl where emp_salary < 100000;

select * from employee_tbl where emp_city like 'karwar';

select * from employee_tbl where emp_city in ('karwar','shivamogga');

 select * from employee_tbl where emp_ename like 's%';


 select * from employee_tbl where emp_salary < 100000 and emp_experience > 3;

   select * from employee_tbl where emp_phone like '9%3' ;
   
select emp_ename, emp_company, emp_salary from employee_tbl where emp_ename like 'a%' or emp_ename like 'e%' or emp_ename like 'i%' or emp_ename like 
'o%' or emp_ename like 'u%';
 
select emp_ename, emp_company, emp_salary from employee_tbl where ( emp_ename like 'a%' or emp_ename like 'e%' or emp_ename like 'i%' or emp_ename like 
'o%' or emp_ename like 'u%') and  ( emp_ename like '%a' or emp_ename like '%e' or emp_ename like '%i' or emp_ename like 
'%o' or emp_ename like '%u') ;

  select * from employee_tbl where emp_city in ('Mysuru','Kudagu','Bagalkot') and emp_experience < 10;
  
   select * from employee_tbl where emp_dob_date <= '1990-12-31' ;
   
 select * from employee_tbl where ( emp_fname like 'a%' or emp_fname like 'e%' or emp_fname like 'i%' or emp_fname like 
'o%' or emp_fname like 'u%') and  ( emp_mname like '%a' or emp_mname like '%e' or emp_mname like '%i' or emp_mname like 
'%o' or emp_mname like '%u') ;
       
       set  sql_safe_updates = false ;
       
 update employee_tbl set emp_company ='BCCI' where emp_company like 'BC' ;
 
  update employee_tbl set emp_company =  'vcompany' where emp_company like '%company%' ;
  
   delete  from employee_tbl where emp_company like 'a332';
    
update employee_tbl set emp_salary = 20000 ;

select * from employee_db_bpl.employee_tbl ;

 -- 22. vishal, kava and esha are the best friends who are working in the same company, vishal has now got a new job in TechM as a senior developer 
-- and kava has left working in the present company as she has got an new offer from infosys as a senior analyst aslo esha has joined infosys itself 
 -- as senior developer and has relocated to Delhi(5678432)
 
update employee_tbl set emp_company = 'TechM' where emp_ename like 'vishal' ;
update employee_tbl set emp_company = 'Infosys' where emp_ename in ('kava','Esha') ;
update employee_tbl set emp_city = 'Delhi',emp_state = 'Delhi', emp_pincode = 5678432 where emp_ename like 'Esha' ;
 
-- 23. samapth has joined TechM with a salary of 60000 as he had a samll experience of 4 yrs his parents Tiwary and Anu were happy to see him join in TechMbas 
 -- they can have him work from their home in hyderbad which is located in Ap, India . Samapth was allocated with an offical email is Samapth@Techm.in 
 -- samapth was suppose to fill a form which needs his DOB (04-06-1996) and his phone number (7998625790) which was very important after all data were alter
 -- collected he was allocated an ID and his data was officially available on the database of the company 
alter table employee_tbl modify emp_phone varchar(20) ;

insert into employee_tbl values(emp_id, emp_ename, emp_fname, emp_mname, emp_phone, emp_email, emp_city, emp_state, emp_country, emp_pincode, emp_dob_date, emp_company, emp_salary, emp_experience);
insert into employee_tbl values('samapth' , 'Tiwary', 'Anu', 7998625790, 'sampath@techm.in', 'Hyderbad', 'AP', 'India', 6789012, '1996-06-04', 'TechM', 60000, 5, 11 );
describe employee_tbl ;



  select count(emp_id), sum(emp_salary), max(emp_salary), min(emp_salary), avg(emp_salary) from employee_tbl ;
  
   select * from employee_tbl order by emp_ename asc;
   
	select * from employee_tbl order by emp_ename desc ;
    
select count(emp_id) from employee_tbl ;

select emp_company ,count(emp_id) as emp_count from employee_tbl 
group by emp_company ;


select * from employee_tbl
 where  emp_salary = (select max(emp_salary) from employee_tbl) ;

select * from employee_tbl
 where  emp_salary = (select min(emp_salary) from employee_tbl) ;

select * from employee_tbl
 where  emp_salary = (select max(emp_salary) from employee_tbl
 where emp_salary < (select max(emp_salary) from employee_tbl)) ;
 
select * from employee_tbl
 where  emp_salary = (select min(emp_salary) from employee_tbl
 where emp_salary > (select min(emp_salary) from employee_tbl)) ;
 
select * from employee_tbl
 where  emp_salary = (select min(emp_salary) from employee_tbl
 where emp_salary > (select min(emp_salary) from employee_tbl
 where emp_salary > (select min(emp_salary) from employee_tbl))) ;
 
select * from employee_tbl
 where  emp_salary = (select min(emp_salary) from employee_tbl
 where emp_salary > (select min(emp_salary) from employee_tbl
 where emp_salary > (select min(emp_salary) from employee_tbl))) ;
 
select * from employee_tbl
 where  emp_salary = (select min(emp_salary) from employee_tbl
 where emp_salary > (select min(emp_salary) from employee_tbl
 where emp_salary > (select min(emp_salary) from employee_tbl))) ;

 


 -- Proceedure --
USE `employee_db_bpl`;
DROP procedure IF EXISTS `proc_1`;

DELIMITER $$
USE `employee_db_bpl`$$
CREATE PROCEDURE `proc_1` ()
BEGIN
create table test_tbl (
test_id int not null auto_increment primary key ,
test_name varchar(100));

alter table test_tbl
add column test_date date ,
add column invigilator varchar(100), 
add column test_city varchar(100) ;

 alter table test_tbl rename to test_dtl_tbl ;
END$$

DELIMITER ;
 
 call proc_1()  ;
  
  ------- 
 USE `employee_db_bpl`;
DROP procedure IF EXISTS `proc_2`;

DELIMITER $$
USE `employee_db_bpl`$$
CREATE PROCEDURE `proc_2` (id int, name varchar(100), tdate date , city varchar(100))
BEGIN
insert into test_dtl_tbl values
(id , ename , tdate, inv_name, city);
END$$

DELIMITER ;
call proc_2 (1, 'test_1', '2024-12-26', 'Ganesh','Bangluru');


      select emp_ename, upper(emp_ename) as upper_case_ename from employee_tbl ;
 
 
   select emp_ename, lower(emp_ename) as lower_case_ename from employee_tbl ;
   

select emp_company , concat(emp_company,'_company') as new_emp_comp from employee_tbl ;

select emp_ename, reverse(emp_ename) as rev_emp_ename from employee_tbl;

USE `employee_db_bpl`;
DROP procedure IF EXISTS `ascii_value`;

DELIMITER $$
USE `employee_db_bpl`$$
CREATE PROCEDURE `ascii_value` (data varchar(1))
BEGIN
select ascii (data);
END$$

DELIMITER ;
call ascii_value('B');

USE `employee_db_bpl`;
DROP procedure IF EXISTS `char_from_ascii`;

DELIMITER $$
USE `employee_db_bpl`$$
CREATE PROCEDURE `char_from_ascii` (data int)
BEGIN
 select char (data); 
END$$

DELIMITER ;
call char_from_value();

-- 54. write a procedure to find the n to the power of m-- 
USE `employee_db_bpl`;
DROP procedure IF EXISTS `char_from_ascii`;

DELIMITER $$
USE `employee_db_bpl`$$
CREATE PROCEDURE `power_proc` (data1  int,data2 int)
BEGIN
 select power(data1 ,data2); 
END$$

DELIMITER ;
call char_from_value();

USE `employee_db_bpl`;
DROP procedure IF EXISTS `char_from_ascii`;

DELIMITER $$
USE `employee_db_bpl`$$
CREATE PROCEDURE `squareroot` (data1  int)
BEGIN
 select sqrt(data1 ); 
END$$

DELIMITER ;
call squareroot(625);

USE `employee_db_bpl`;
DROP procedure IF EXISTS `char_from_ascii`;

DELIMITER $$
USE `employee_db_bpl`$$
CREATE PROCEDURE `sign_num` (data1  int)
BEGIN
 select sign(data1 ); 
END$$

DELIMITER ;
call sign_num(45);
call sign_num(-45);

USE `employee_db_bpl`;
DROP procedure IF EXISTS `log_10_num`;

DELIMITER $$
USE `employee_db_bpl`$$
CREATE PROCEDURE `log_10_num` (data1  int)
BEGIN
 select log10(data1 ); 
END$$

DELIMITER ;
call log10(45);

select emp_ename, emp_dob_date from employee_tbl where emp_dob_date < '2002-01-01';

select emp_ename , month(emp_dob_date)as month_num, monthname(emp_dob_date) as month_name from employee_tbl ;

select emp_ename , day(emp_dob_date) as day_num, dayname(emp_dob_date) as day_name from employee_tbl ;

select emp_ename , emp_dob_date, year(emp_dob_date) as year_date from employee_tbl ; 
 
 --  print the current rate and time 
select now();

select current_time();

select current_date(); 

select current_user();


 
 