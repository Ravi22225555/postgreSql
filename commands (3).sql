create table laptop(
brand varchar(255),
model varchar(255),
price int,
year int
);

select * from laptop;


insert into laptop(brand,model,price,year)
values
('hp','pavilion',60000,2024),
('dell','vostro',70000,2023),
('macbook','airpro',1000000,2025),
('lenovo','thinkpad',40000,2022),
('dell','inspire',80000,2023),
('macbook','macpro',1000000,2025),
('lenovo','slim',90000,2022);




-- select *from laptop

-- to check the min price use this command
select min(price) as laptopprice 
from laptop;

select * from laptop
where price =40000;


update laptop
set price =60000
where model = 'airpro';

select * from laptop;

-- to count number list in a coloumn using this command
select count (brand)
from laptop;


-- to count number list in a coloumn perticular id using this command
select count (brand)
from laptop
where price =60000;

-- to give the total price of the table column using this command
select sum(price)
from laptop;

-- to give avarage price and the 10 decimal after point  
select avg(price)
from laptop;

-- to give avarage price and the 2 decimal after poin
select avg(price)::numeric(10,2)
from laptop;

-- to give the filateration from list in coloum where the start with using first letter
select * from laptop
where brand like ('l%');

-- to give the filateration from list in coloum where the containing the  using letter
select * from laptop
where brand like ('%l%');

-- to give the the filateration from list where it endswith later or string or char use this command
select* from laptop
where brand like ('%k');

-- to give the the filateration from list where it contain later or string or charater use this command
select * from laptop
where brand like 'l_en__';

-- it is used for where the string are present in table 
select *from laptop 
where brand in('lenovo','dell');

-- it is used for where the string are  present in table remiang elements will give the details
select * from laptop
where brand not In('macbook');


select* from laptop
where price in(60000);

-- using between command for get information from range in list

select * from laptop
where price between 20000 and 60000;

-- using between command for get information from range in list in strings in  alphabetically
select* from laptop
where brand between 'dell' and 'macbook';


-- using between command for get information from range in list in strings in  alphabetically  in order by asc
select*from laptop
where brand between 'dell'and 'macbook'
order by brand;


-- using between command for get information from range in list years  in order by assending order
select*from laptop
where year between 2000 and 2030
order by year;


select model as information
from laptop;


select model ||' '|| year as result
from  laptop;

select price as "the price of the list"
from laptop;




select count (brand),model
from laptop
group by model;



select brand,max(price)
from laptop
group by brand;


select * from laptop;


SELECT date_trunc('month', CURRENT_DATE):: date as first_date_inmonth; -- Correct

select (date_trunc('month',CURRENT_DATE)+interval'1month - 1 day')::date;

select CURRENT_DATE;

select (CURRENT_DATE +interval'1 month')::date;


SELECT SUBSTRING('suvarna' FROM 3 FOR 1) AS character_at_n;


SELECT POSITION('n' IN 'suvarna') AS index_of_n;


create table oneover as SELECT* from laptop;

SELECT*from oneover
where year %2=1;


SELECT num
from generate_series(10,20,1) as num
where num%2=0;































































