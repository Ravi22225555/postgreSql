create table cars (
  brand varchar(250),
  model varchar(250),
  year int
);



INSERT INTO cars (brand, model, year)
VALUES
  ('Volvo', 'v9', 1968),
  ('BMW', 'M1', 1978),
  ('Toyota', 'innavo', 1975);
  
  
select year from cars;



ALTER TABLE cars
ADD color VARCHAR (255);



update cars
set color = 'red';


update cars
set year = 2020
where brand = 'BMW';




ALTER TABLE cars
ALTER COLUMN year TYPE VARCHAR(7);


alter table cars
alter column color type varchar(30);



alter table cars
drop column color; 

select year from cars;


delete from cars
where brand ='BMW';



INSERT into cars(brand,model,year)
values('BMW','m2','23990');

delete from cars;

truncate table cars;

select *from cars;







