-- Overview of data

select *from project.amazon;

-- Number of records

select count(*) as "Number Of records" from project.amazon;

-- Highest and lowest rating

select max(rating) as"Higest Rating", min(rating) as "Lowest Ratings" from project.amazon ;

-- Highest and lowest rated product details

select a.* from project.amazon a where a.rating in (select max(rating)  from project.amazon);

select a.* from project.amazon a where a.rating in (select min(rating)  from project.amazon);

-- Highest and lowest price

select max(price) as"Higest price", min(price) as "Lowest price" from project.amazon ;

-- Highest and lowest priced product details

select a.* from project.amazon a where a.price in (select max(price)  from project.amazon);

select a.* from project.amazon a where a.price in (select min(price)  from project.amazon);

-- Finding unique ratings

select distinct rating from project.amazon;

-- Adidas brand details

select a.* from project.amazon a where Upper(a.Title) like '%ADIDAS%';
-- Count of adidas records 

select count(*) as "Count" from project.amazon a where Upper(a.Title) like '%ADIDAS%';

-- Highest rated adidas products

select a.* from project.amazon a where a.rating in (select max(rating)  from project.amazon a where Upper(a.Title) like '%ADIDAS%')
and Upper(Title) like '%ADIDAS%';

-- Highest priced adidas products

select a.* from project.amazon a where a.price in (select max(price)  from project.amazon a where Upper(a.Title) like '%ADIDAS%')
and Upper(Title) like '%ADIDAS%';

-- Men's shoes details

select a.* from project.amazon a where Upper(a.Title) like '%MEN%';

select a.* from project.amazon a where a.price in (select max(price)  from project.amazon a where Upper(a.title) like '%MEN%')
and Upper(title) like '%MEN%';

-- Best brand details

select a.* from project.amazon a where Upper(a.Title) like  '%ADIDAS%' or    Upper(a.Title) like '%NIKE%'
or  Upper(a.Title) like '%PUMA%';

-- Men's sneakers details

select *from project.amazon a where UPPER(a.Title) like '%MEN%' AND UPPER(a.Title) like '%SNEAKER%';

select a.* from project.amazon a where a.price in (select max(price)  from project.amazon a WHERE UPPER(a.Title) like '%MEN%' AND UPPER(a.Title) like '%SNEAKER%')
and UPPER(a.Title) like '%MEN%' AND UPPER(a.Title) like '%SNEAKER%';

select a.* from project.amazon a where a.rating in (select max(rating)  from project.amazon a WHERE UPPER(a.title) like '%MEN%' AND UPPER(a.title) like '%SNEAKER%')
and UPPER(a.Title) like '%MEN%' AND UPPER(a.Title) like '%SNEAKER%';

