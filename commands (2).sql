create table tractor(
brand varchar (255),
model varchar(250),
running int

);
select *from tractor;


insert into tractor(brand,model,running)
values
('mahindra','bhumiputra',800),
('powertrac','euro',2000),
('massy fergusion','mahasakhi',800);
select*from tractor;

select * from tractor where running<1000 or running >1500;

-- to show the rows data using this command
SELECT *from tractor where brand ='powertrac';

-- using greater than oparater
select * from tractor where running<1000;

-- using not equal oparater
select * from tractor where brand !='massy fergusion';

-- uisng like oparator gives rows data using starts with letter m
select * from tractor where brand like 'm%';

-- usind and oparator
select*from tractor where brand like 'm%' and running <=2000;

-- to check the whether specification are present or not
select *from tractor where model in('euro');

-- using between oparator
select * from tractor where running between 500 and 2000;


insert into tractor(brand,running)
values
('johndear', 3453);


select * from tractor;

-- using null oparator in rows
select *from tractor where model is null;

-- using null oparator
select *from tractor where brand not Ilike 'm%';


update tractor
set running = 500
where brand ='massy fergusion';

SELECT*from tractor;


-- removig the duplicate and give different values only
select distinct running from tractor;

-- count removig the duplicate and give different values only
SELECT count(distinct running)from tractor;


-- filter in table using where command
SELECT *from tractor
WHERE running =2000;

-- using this code int assending order 
select *from tractor
order by running;

-- using this code int deseding order; 
SELECT * from tractor
order by running desc;

-- using this code string or text assending order
SELECT*from tractor
order by brand;

-- using this code string or text desending order
SELECT *from tractor 
order by brand desc;

-- using this cuttoff the list
SELECT*from tractor
limit 2;


SELECT *from tractor;

-- using this command cutoff the list form where to start int
SELECT*from tractor
limit 2 offset 1;

-- using this command check min value in coloumn
select min(running) from tractor;

-- using this commond give the coloumn name heading and give min value
select min(running)as running from tractor;

-- using this command check max value in coloumn
select max(running )from tractor;


SELECT max(running)as reading from tractor;



select * from tractor where running>1500 and running<1000;


insert into tractor values('mahindra','yuvo',700);
SELECT*from tractor;






SELECT running,count(distinct running)
from tractor
group by running
having count(distinct running )>1;



SELECT brand,count(distinct running)
from tractor
group by brand
having count(distinct running)>1;









-- SELECT * FROM cars
-- WHERE brand = 'Volvo';