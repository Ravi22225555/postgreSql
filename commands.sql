
-- Hii everyone 
-- creating new table with coloumn headings

create table collage (

  id int,
  studentName varchar(255),
  percentage int,
  year int
  
);


-- inserting row values using this Syntax

INSERT INTO collage (id,studentName,percentage,year)
VALUES
(2345,'ravindra',82,2024),
(5432,'gopi',80,2025),
(2345,'snadeep',90,2023);



-- select studentName from collage
-- select year from collage

select * from collage;

alter table collage
add exam varchar(255);

-- to update the coloumn data using this syntax
update collage
set exam ='pass';


select * from collage;

-- to update the coloumn data in pertcular data using this syntax
update collage
set exam= 'fail'
where studentName = 'snadeep';


-- typecasting using conver int to char using this syntax
alter table collage
alter column year type varchar (4);

select *from  collage;


-- to add coloumn head in the table using this syntax
alter table collage
add address varchar(255);

select*from collage;


-- to add the coloumn data using this syntax

update collage
set address = 'ap';

select * from collage;


-- to remove the coloumn data using this syntax

alter table  collage
drop column address;

select * from collage;



insert INTO
collage(id,studentname,percentage,year
,exam)
VALUES(5666,'ramana',54,3035,'pass');


select * from collage;


-- to deleting enter row data using this syntax
delete from collage
where studentname ='snadeep';

select *from collage;


-- to drop the table or deleting table using this syntax;
drop table collage;

select *from collage;


-- rename the table by using this syntax

alter table collage rename to narasaropeta;

select *from narasaropeta;










