create database dapro1;

#seeing the tables of the database
SHOW DATABASES;
USE dapro1;
SHOW TABLES;
SELECT * FROM dtable;


# Q1) total revenue genrated by male and female customers
select gender, sum(purchase_amount)
from dtable
group by gender;

#Q2)which customer used a discount but still spent more than the average purchase amount?
select customer_id, gender, subscription_status, age_group
from dtable
where discount_applied = "Yes" and purchase_amount > (select avg(purchase_amount) from dtable);

#Q3)which are the top 5 products with highest average review rating?
SELECT 
    item_purchased,
    category,
    round(avg(review_rating),2)
FROM
    dtable
GROUP BY item_purchased,category
ORDER BY AVG(review_rating) DESC
limit 5;

#Q4)compre the average purchase amount between standard and express shipping
select shipping_type, round(avg(purchase_amount),2)
from dtable
where shipping_type in ("Standard","Express") 
group by shipping_type;


#Q5) do subscribed customers spend more? compare the average spend and total revenue between subscribers 
#and non_subscribers??
select subscription_status,count(customer_id) as total_customers, avg(purchase_amount) as revenue, 
sum(purchase_amount) as total_revenue
from dtable
group by subscription_status;

#Q6)top 5 product who is having high percentage of purchase with discount applied?
select * from dtable;
select item_purchased,
round(100* sum(case when discount_applied = "Yes" then 1 else 0 end)/count(*),2)
as discount_rate
from dtable
group by item_purchased
order by discount_rate desc
limit 5;

#Q7)segment customers into new,returning and loyal based on their total 
#number of previous purchases and show the count of each segment.
select * from dtable;

with customer_type as(select customer_id, previous_purchases,
case 
  when previous_purchases = 1 then 'new'
  when previous_purchases between 2 and 10 then 'returning'
  else 'loyal'
  end as customer_segment
from dtable)
select customer_segment, count(*) as "Numbers of Custoemr"
from customer_type
group by customer_segment;

#Q8)what are the top 3 most purchased products within each category.
with item_count as (
select category,item_purchased, count(customer_id) as total_orders,
row_number() over(partition by category order by count(customer_id) desc) as item_rank
from dtable
group by category,item_purchased)
select item_rank,category,item_purchased, total_orders
from item_count
where item_rank <= 3;


#Q9)are customers who are repeat buyers (More then 5 previous purchases) also
#likely to subscribe??
select subscription_status, count(customer_id) as repet_buyers
from dtable
where previous_purchases > 5 
group by subscription_status;

#Q10) what is the revenue contribution of each age group?
select age_group, sum(purchase_amount) as total_revenue 
from dtable
group by age_group
order by total_revenue DESC;



