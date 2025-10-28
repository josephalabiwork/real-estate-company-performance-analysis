create database real_estate;
use real_estate;
select * from transactions;
select * from buyers;
select * from properties;
select * from agents;
CREATE VIEW FULLDETAILS AS
SELECT 
    transactions.transaction_id,
    transactions.sale_price,
    transactions.sale_date,
    buyers.buyer_id,
    buyers.first_name AS buyers_first_name,
    buyers.last_name AS buyers_last_name,
    buyers.budget,
    properties.property_id,
    properties.address,
    properties.city,
    properties.price,
    agents.agent_id,
    agents.first_name AS agents_first_name,
    agents.last_name AS agents_last_name,
    agents.email
FROM buyers
left JOIN transactions ON buyers.buyer_id = transactions.buyer_id
left JOIN properties ON transactions.property_id = properties.property_id
left JOIN agents ON properties.agent_id = agents.agent_id;
-- CHECKING FOR DUPLICATES ON ALL TABLES
SELECT TRANSACTION_ID, COUNT(*) FROM TRANSACTIONS
GROUP BY TRANSACTION_ID
HAVING COUNT(*)>1;
-- CHECKING FOR BUYERS
SELECT BUYER_ID, COUNT(*) FROM BUYERS
GROUP BY BUYER_ID
HAVING COUNT(*)>1;
-- AGENTS
SELECT AGENT_ID, COUNT(*) FROM AGENTS
GROUP BY AGENT_ID
HAVING COUNT(*)>1;
-- FOR PROPERTIES
SELECT PROPERTY_ID, COUNT(*) FROM PROPERTIES
GROUP BY PROPERTY_ID
HAVING COUNT(*)>1;
/* out of 50 customers some customers didnt go through with the purchases
1,2,17,18,21,23,27,42,47. 9 customers didnt buy anything out of 50
*/
select * from fulldetails;
--   Find the most popular cities for property sales.
SELECT CITY, SUM(SALE_PRICE) AS CITYTOTALREVENUE
FROM FULLDETAILS
WHERE CITY IS NOT NULL
GROUP BY CITY
ORDER BY CITYTOTALREVENUE DESC
LIMIT 5;
-- Find the top expensive properties 
SELECT DISTINCT PROPERTY_id,sale_price as top_expensive_properties from fulldetails
order by sale_price desc
limit 5;
-- Identify the top-performing agents.
-- What is the total revenue generated from property sales?
select sum(sale_price) as total_revenue from fulldetails;
-- how many properties were sold by each agents
SELECT agents_first_name,agents_last_name, count(distinct property_id) as properties_sold_by_agents from fulldetails
where agents_first_name is not null and agents_last_name is not null
group by agents_first_name,agents_last_name
order by properties_sold_by_agents desc
limit 5;
-- What is the average sale price of properties in each city?
select city, avg(sale_price) as avg_sale_price from fulldetails
group by city
order by avg_sale_price desc
limit 10;
select * from fulldetails;
  -- Which buyers purchased multiple properties?
SELECT buyers_first_name,buyers_last_name,
       COUNT(distinct property_id) AS properties_bought
FROM fulldetails
WHERE buyer_id IS NOT NULL
GROUP BY buyers_first_name,buyers_last_name
HAVING COUNT(distinct property_id) > 1
order by properties_bought desc
limit 6;
-- What is the highest-priced property sold, and who was the buyer?
SELECT
       buyers_last_name,
       sale_price
FROM fulldetails
order by sale_price desc
limit 1;
-- •  Which agent had the highest total sales revenue?
SELECT agents_first_name,agents_last_name, 
sum(sale_price) as top_performing_agents from fulldetails
group by agents_first_name,agents_last_name
order by top_performing_agents desc
limit 1;

select * from fulldetails where buyers_last_name= 'bowman';


select sum(budget) from fulldetails;


select count(distinct property_id) from fulldetails;
select count(distinct buyer_id) from fulldetails;
select count(distinct agent_id) from fulldetails;
select distinct agent_id from fulldetails where transaction_id is not null

-----  continue your queries here
select * from fulldetails;
-- first kpi (revenue)
select sum(sale_price) as total_revenue from fulldetails;
 CREATE TABLE FULL_DETAILS AS
 SELECT * FROM FULLDETAILS;
-- avg discount
select count(distinct property_id) as no_of_properties from fulldetails;
-- how many buyers
select count(distinct buyer_id) as total_number_of_buyers from fulldetails;
-- people who didnt buy any property
select count(*) as buyers_with_no_purchase from fulldetails
where transaction_id is null;
-- properties sold above budget
select count(*) as overbudgetsales from fulldetails
where sale_price>budget
;
SELECT * FROM FULLDETAILS;
SELECT min(SALE_DATE) AS STARTYEAR,
MAX(SALE_DATE) AS ENDYEAR FROM FULLDETAILS;
-- CREATING SLICER FOR DATES
SELECT DISTINCT YEAR(SALE_DATE) AS SALE_YEAR FROM FULLDETAILS
ORDER BY SALE_YEAR;
-- AVG REVNUE
select AVG(sale_price) as AVG_revenue from fulldetails;









-- to kmow when price was higher than sale price
SELECT * FROM FULLDETAILS WHERE PRICE> SALE_PRICE
order  by price desc;

-- to know when saleprice was bigger than price
SELECT * FROM FULLDETAILS WHERE sale_price> price
order by sale_price desc;

SELECT * FROM FULLDETAILS WHERE PRICE=SALE_PRICE;
-- at no point in time did price match with sale price

select * from fulldetails where budget<sale_price;
select * from fulldetails where budget>sale_price;




SELECT CITY,COUNT(DISTINCT PROPERTY_ID) FROM FULLDETAILS
GROUP BY CITY
HAVING COUNT(DISTINCT PROPERTY_ID)>1;

SELECT * FROM FULLDETAILS WHERE CITY= "BLACKBURY";

SELECT COUNT(DISTINCT CITY) FROM FULLDETAILS




