Use mallpulse_analysis


-- Question 1: What is the total revenue generated across all transactions?
select sum(total_amount) as total_revenue from orders;

-- Question 2: Which product category generates the highest total revenue?
select category, sum(total_amount) as total_category_revenue
from orders
group by category 
order by total_category_revenue DESC;

-- Question 3: Which shopping mall has the highest number of transactions?
select shopping_mall, count(*) as total_transactions
from orders
group by shopping_mall
order by total_transactions desc;

-- Question 4: Who are the top 10 customers by total amount spent?
select top 10 customer_id, sum(total_amount) as total_spendings
from orders 
group by customer_id
order by total_spendings desc;

-- Question 5: What is the most popular payment method?
select payment_method, count(*) as frequency
from orders
group by payment_method
order by frequency desc;

-- Question 6: What is the average spending per transaction for each gender?
select c.gender, cast(avg(o.total_amount) as decimal(10,2)) as average_spending
from orders o
join customers c on o.customer_id = c.customer_id
group by c.gender
order by average_spending desc;

-- Question 7: How many transactions were recorded each year?
select year(invoice_date) as [year], count(*) as total_transaction
from orders
group by year(invoice_date)
order by [year] asc;

-- Question 8: What age group spent the most on average?

-- Main query: Aggregate the data from the subquery
select sub.age_group,
	cast(avg(sub.total_amount) as decimal(10,2)) as average_spending
from(
	-- Subquery: Assign age buckets to transactions
	select 
		o.total_amount, 
		case 
			when c.age < 20 then 'Teen (Below 19)'
			when c.age between 20 and 29 then 'Young Adult (20-29)'
			when c.age between 30 and 50 then 'Middle Aged (30-50)'
		else 'Senior (Above 50)'
		end as age_group
	from orders o
	join customers c on o.customer_id = c.customer_id
) as sub
group by sub.age_group
order by average_spending desc;

