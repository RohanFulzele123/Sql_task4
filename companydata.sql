create table companydata (
	id serial primary key,
	customer_name varchar,
	customer_id int,
	bike_name varchar,
	company_name varchar,
	state varchar,
	city varchar,
	price int,
	status boolean
)
select * from companydata
insert into companydata values (1,'rohan fulzele',54214,'pulser','Bajaj','Maharashtra','Nagpur',150000,'true')	
select * from companydata
copy companydata from 'D:/ACR INSTITUTE/Task from DA/companydata.csv' DELIMITER ',' CSV header
select * from companydata

--1) write a query what is status of city mumbai

select status,city from companydata where city = 'mumbai'

--2) get all  stats of price from companydata table 

select sum(price) as "sumofbike",
avg(price) as "avgofbike",
min(price) as "minofbike",
max(price) as "maxofbike" from companydata
select * from companydata

--3) count of bike_name price is greater than 500000

select count(bike_name) from companydata where price > 500000

--4) write a query how to make pagination

	select id from companydata limit 10 offset 10

select * from companydata

--5) write a query customer name which price between 100000 and 500000

select customer_name, price from companydata where price between '100000' AND '500000'

SELECT * FROM companydata

--6) write a query on companydata calculate sum,avg,min,max, count from price column but the condition is price should between 100000 and 500000

select sum(price) as "sumofprice",
avg(price) as "avgofprice",
min(price) as "minofprice",
max(price) as "maxofprice",
count(price) as "countofprice" from companydata where price between 100000 and  500000

select * from companydata

--7) write a query the bike_name is pulser from Nagpur and price would be descending order 

select * from companydata where bike_name = 'pulser' AND 	city = 'Nagpur' order by id limit 20


--8) write a query separate name of customer and bike name of using like or order by

select customer_name,bike_name from companydata where customer_name like 'prajwal yeole' order by companydata desc limit 10 

select * from companydata
	


