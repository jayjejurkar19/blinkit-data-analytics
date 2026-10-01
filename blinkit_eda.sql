-- question 1: identify the number of records in each table?

select 'customers' as table_name, count(*) as records
from blinkit_db.blinkit_customers

union all

select 'products', count(*)
from blinkit_db.blinkit_products

union all

select 'order_items', count(*)
from blinkit_db.blinkit_order_items

union all

select 'feedback', count(*)
from blinkit_db.blinkit_customer_feedback;


-- question 2: are there any duplicate customer ids in the customer dataset?

select customer_id, count(*) as duplicate_count
from blinkit_db.blinkit_customers
group by customer_id
having count(*) > 1;

-- question 3: are there any duplicate product ids in the product dataset?

select product_id, count(*) as duplicate_count
from blinkit_db.blinkit_products
group by product_id
having count(*) > 1;

-- question 4: are there any duplicate feedback ids in the customer feedback dataset?

select feedback_id, count(*) as duplicate_count
from blinkit_db.blinkit_customer_feedback
group by feedback_id
having count(*) > 1;


-- question 5: are there missing values in important customer attributes?

select
sum(customer_id is null) as missing_customer_id,
sum(customer_name is null) as missing_customer_name,
sum(email is null) as missing_email,
sum(phone is null) as missing_phone,
sum(area is null) as missing_area,
sum(pincode is null) as missing_pincode,
sum(registration_date is null) as missing_registration_date,
sum(customer_segment is null) as missing_customer_segment
from blinkit_db.blinkit_customers;

-- question 6: are there any customer feedback records with invalid ratings?

select * from blinkit_db.blinkit_customer_feedback
where rating < 1
or rating > 5;


-- question 7: are there products with invalid prices, mrp, or margin percentages?

select * from blinkit_db.blinkit_products
where price < 0
or mrp < 0
or margin_percentage < 0
or margin_percentage > 100;

-- question 8: how many customers belong to each customer segment?

select customer_segment, count(*) as customer_count
from blinkit_db.blinkit_customers
group by customer_segment
order by customer_count desc; 

-- question 9: which customer segments generate the highest number of orders?

select customer_segment, count(*) as customers, sum(total_orders) as total_orders, round(avg(total_orders),2) as avg_orders_per_customer
from blinkit_db.blinkit_customers
group by customer_segment
order by total_orders desc;

-- question 10: which customer segments have the highest average order value?

select customer_segment, count(*) as customers, round(avg(avg_order_value),2) as avg_order_value
from blinkit_db.blinkit_customers
group by customer_segment
order by avg_order_value desc;


-- question 11: which customers have generated the highest estimated revenue?

select customer_id, customer_name, customer_segment, total_orders, avg_order_value,
round(total_orders * avg_order_value,2) as estimated_revenue
from blinkit_db.blinkit_customers
order by estimated_revenue desc 
limit 20;


-- question 12: which product categories generate the highest revenue and sales volume?

select p.category, sum(oi.quantity) as units_sold, round(sum(oi.quantity * oi.unit_price),2) as revenue, count(distinct oi.order_id) as total_orders
from blinkit_db.blinkit_order_items oi
join blinkit_db.blinkit_products p on oi.product_id = p.product_id
group by p.category
order by revenue desc;


-- question 13: which are the top 10 products by total revenue?

select p.product_id, p.product_name, p.category, p.brand, sum(oi.quantity) as units_sold, round(sum(oi.quantity * oi.unit_price),2) as revenue
from blinkit_db.blinkit_order_items oi
join blinkit_db.blinkit_products p on oi.product_id = p.product_id
group by p.product_id, p.product_name, p.category, p.brand
order by revenue desc
limit 10;


-- question 14: which brands generate the highest revenue?

select p.brand, sum(oi.quantity) as units_sold, round(sum(oi.quantity * oi.unit_price),2) as revenue, count(distinct oi.order_id) as total_orders
from blinkit_db.blinkit_order_items oi
join blinkit_db.blinkit_products p on oi.product_id = p.product_id
group by p.brand
order by revenue desc
limit 10;


-- question 15: which products have the highest number of units sold?

select p.product_id, p.product_name, p.category, p.brand, sum(oi.quantity) as units_sold, round(sum(oi.quantity * oi.unit_price),2) as revenue
from blinkit_db.blinkit_order_items oi
join blinkit_db.blinkit_products p on oi.product_id = p.product_id
group by p.product_id, p.product_name, p.category, p.brand
order by units_sold desc
limit 10;


-- question 16: which products rank in the top 3 by revenue within each product category?

select product_id, product_name, category, brand, revenue, category_rank
from
(select p.product_id, p.product_name, p.category, p.brand, round(sum(oi.quantity * oi.unit_price),2) as revenue,
rank() over(partition by p.category order by sum(oi.quantity * oi.unit_price) desc) as category_rank
from blinkit_db.blinkit_order_items oi
join blinkit_db.blinkit_products p on oi.product_id = p.product_id
group by p.product_id, p.product_name, p.category, p.brand) ranked_products
where category_rank <= 3
order by category, category_rank;


-- question 17: what is the average order value based on order item transactions?

select round(avg(order_value),2) as average_order_value
from (select order_id, sum(quantity * unit_price) as order_value
from blinkit_db.blinkit_order_items
group by order_id) order_values;


-- question 18: which orders have the highest total order value?

select order_id, round(sum(quantity * unit_price),2) as order_value, sum(quantity) as total_units
from blinkit_db.blinkit_order_items
group by order_id
order by order_value desc
limit 20;


-- question 19: which product categories have the highest average revenue per order?

select p.category, count(distinct oi.order_id) as total_orders, round(sum(oi.quantity * oi.unit_price) / count(distinct oi.order_id),2) as average_revenue_per_order
from blinkit_db.blinkit_order_items oi
join blinkit_db.blinkit_products p on oi.product_id = p.product_id
group by p.category
order by average_revenue_per_order desc;


-- question 20: which products have high sales volume but relatively low margin percentages?

select p.product_id, p.product_name, p.category, p.brand, sum(oi.quantity) as units_sold, p.margin_percentage, round(sum(oi.quantity * oi.unit_price),2) as revenue
from blinkit_db.blinkit_order_items oi
join blinkit_db.blinkit_products p on oi.product_id = p.product_id
group by p.product_id, p.product_name, p.category, p.brand, p.margin_percentage
order by units_sold desc, p.margin_percentage asc
limit 20;


-- question 21: which products generate the highest estimated profit?

select p.product_id, p.product_name, p.category, p.brand, sum(oi.quantity) as units_sold, round(sum(oi.quantity * oi.unit_price),2) as revenue, p.margin_percentage,
round(sum(oi.quantity * oi.unit_price) * p.margin_percentage / 100,2) as estimated_profit
from blinkit_db.blinkit_order_items oi
join blinkit_db.blinkit_products p on oi.product_id = p.product_id
group by p.product_id, p.product_name, p.category, p.brand, p.margin_percentage
order by estimated_profit desc
limit 20;


-- question 22: which products have the highest discount percentage compared with their mrp?

select product_id, product_name, category, brand, mrp, price, round((mrp - price) / mrp * 100,2) as discount_percentage
from blinkit_db.blinkit_products
where mrp > 0
order by discount_percentage desc
limit 20;


-- question 23: do products with higher discounts have higher sales volumes?

select p.product_id, p.product_name, p.category, round((p.mrp - p.price) / p.mrp * 100,2) as discount_percentage, sum(oi.quantity) as units_sold, round(sum(oi.quantity * oi.unit_price),2) as revenue
from blinkit_db.blinkit_products p
join blinkit_db.blinkit_order_items oi on p.product_id = oi.product_id
where p.mrp > 0
group by p.product_id, p.product_name, p.category, p.mrp, p.price
order by discount_percentage desc;


-- question 24: what percentage of customer feedback is positive, neutral, and negative?

select sentiment, count(*) as feedback_count, round(count(*) * 100.0 / sum(count(*)) over(),2) as feedback_percentage
from blinkit_db.blinkit_customer_feedback
group by sentiment
order by feedback_percentage desc;


-- question 25: which feedback categories receive the lowest average customer ratings?

select feedback_category, count(*) as feedback_count, round(avg(rating),2) as average_rating
from blinkit_db.blinkit_customer_feedback
group by feedback_category
order by average_rating asc;


-- question 26: which customer segments have the highest average customer satisfaction?

select c.customer_segment, count(f.feedback_id) as feedback_count, round(avg(f.rating),2) as average_rating, round(avg(case when f.sentiment = 'positive' then 1 else 0 end) * 100,2) as positive_feedback_percentage
from blinkit_db.blinkit_customers c
join blinkit_db.blinkit_customer_feedback f on c.customer_id = f.customer_id
group by c.customer_segment
order by average_rating desc;


-- question 27: which locations have the lowest average customer satisfaction?

select c.area, count(f.feedback_id) as feedback_count, round(avg(f.rating),2) as average_rating
from blinkit_db.blinkit_customers c
join blinkit_db.blinkit_customer_feedback f on c.customer_id = f.customer_id
group by c.area
order by average_rating asc;
