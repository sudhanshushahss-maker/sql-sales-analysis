SELECT * FROM mydata.superstore limit 10;

select count(*) from mydata.superstore;
select distinct category from mydata.superstore;
select distinct region from mydata.superstore;

select sum(sales) as total_sales,
sum(profit) as total_profit
from mydata.superstore;

select category,
sum(profit) as total_profit
from mydata.superstore
group by category 
order by sum(profit) desc;

select
case
when Discount = 0 then 'No discount'
when Discount <= 0.5 then 'low discount'
else 'high discount'
end as discount_range,
avg(profit) as average_profit,
sum(profit) as total_profit
from mydata.superstore
group by discount_range
order by average_profit desc;



select "Sub-Category",
sum(profit) as loss
from mydata.superstore
group by "Sub-Category"
having sum(Profit) < 0;


select Region,
sum(profit) as regional_profit
from mydata.superstore
group by region
order by regional_profit desc;

select `Product Name`,
sum(profit) as total_profit
from mydata.superstore
group by `Product Name`
order by total_profit desc
limit 5;

select `Sub-Category`,
sum(profit) as total_profit
from mydata.superstore
group by `Sub-Category`
order by total_profit desc
limit 5;

select*
from(
select
`Sub-Category`,
sum(profit) as total_profit,
rank() over(order by sum(profit) desc) as rnk
from mydata.superstore
group by `Sub-Category`) ranked
where rnk <=5;


select*
from(
select `Sub-Category`,
sum(profit) as total_profit,
rank() over(order by sum(profit) asc) as rnk
from mydata.superstore
group by `Sub-Category`) ranked
where rnk <= 5;

select*
from
(select `Sub-Category`,
sum(sales) as total_sales,
rank() over( order by sum(sales) desc) as rnk
from mydata.superstore
group by `Sub-Category`) as Ranked
where rnk <= 3;


select 
`Sub-Category` as sub_category,
sum(profit)/sum(sales) * 100 as profit_margin
from mydata.superstore
group by sub_category;

select*
from(
select
`Sub-Category` as sub_category,
sum(profit) as total_profit,
sum(sales) as total_sales,
sum(profit)/sum(sales) * 100 as profit_margin,
rank() over ( order by sum(profit)/sum(sales) * 100 desc) as rnk
from mydata.superstore
group by `Sub-Category`) as ranked
where rnk = 1;

select*
from(
select
`Sub-Category` as sub_category,
sum(profit) as total_profit,
sum(sales) as total_sales,
sum(profit)/sum(sales) * 100 as profit_margin,
rank() over ( order by sum(profit)/sum(sales) * 100 asc) as rnk
from mydata.superstore
group by `Sub-Category`) as ranked
where rnk = 1
