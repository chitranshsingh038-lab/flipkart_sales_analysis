# Generating Insights
use flipkart_analysis;

select * from flipkart_data;

# finding no of orders by state
select State,count(*) as total_orders from flipkart_data
group by State
order by  total_orders desc;

#total orders by state
select State,
	   sum(case when Category='Electronics' then 1 else 0 end) as electronics,
       sum(case when Category='fashion' then 1 else 0 end) as fashion,
       sum(case when Category='Books' then 1 else 0 end) as books,
       sum(case when Category='Home & Kitchen' then 1 else 0 end) as home,
       sum(case when Category='Mobiles' then 1 else 0 end) as mobiles,
       sum(case when Category='Beauty' then 1 else 0 end) as beauty ,
       count(*) as total_orders  from flipkart_data
 group by State
 order by total_orders desc;
 
 # analysis :-
 # whether up comes first regarding to orders but still beauty products ordering rate is still low compare tp other categories
 # mobile ordering rate in chandigarh is higher compaer to other category and states
 # order rate of beauty product is lower among all states
       
# analysisg discounts on items
select State,
       avg(case when Category='Electronics' then Discount_Percent end) as electronics,
       avg(case when Category='Fashion' then Discount_Percent  end) as fashion, 
       avg(case when Category='Books' then Discount_Percent  end) as Books, 
       avg(case when Category='Home & Kitchen' then Discount_Percent end) as home_appliance,  
       avg(case when Category='Mobiles' then Discount_Percent end) as Mobiles,
       avg(case when Category='Beauty' then Discount_Percent end) as beauty from flipkart_data
group by State;

# amalysis :-
# the reason of low beauty product order rate in up may be discount percentage,it is less then other categoris;
# buying rate of electronics is high because of high discounts it goes up to 4.5 percent
# keral's fachion product buy rate is high because of highest discount this is also applied on delhi;
       
#finding ang_profit percentage on each sumcategory  
select category,count(*) as total_items,(sum(Profit)/sum(sales_Amount))*100 as profit_percentage from flipkart_data
group by category
order by profit_percentage desc;

#insight
# home appliance and electronics have highest profit percentage over 29%
#on other hand electronics items are most solded items
#beauty products gernerate least profit only 20% alsdo they are second least selling items

# identifying which category provide return value(customer buy product again)
SELECT customer_ID, category,COUNT(*) AS order_count
FROM flipkart_data
GROUP BY category,customer_ID
HAVING COUNT(*) > 1
order by order_count desc;

# insight
# all top 3 recursive buyers are exist from same category that is electronics
# and again beauty products lag behind

# finding avg price of each category
select category,count(*) as total_items_sold,avg(selling_price) as avg_sales_price from flipkart_data
group by category
order by total_items_sold desc;

#insight
#here again electronics offers highest avg sales price
#again beauty products have second highest avg sales value
# even avg sales price of mobile phones is 26k that is really good it means people generally likes to buy expensive phones

#counting subcategories in each category
select category,count(distinct(subcategory)) as total_sub_category from flipkart_data
group by category
order by total_sub_category desc ;

#insights
# again electronics provide highest sub_category it may direct affact its sales
#while beauty products provide least sub category so it affect its sale

#counting mo of brands from each category
select category,count(distinct(brand)) as total_brands from flipkart_data
group by category
order by total_brands desc;

#insights
# electronics category provides highest different type brand
# beauth category provide 2 highest different type brands right just after electronics

SELECT 
    category,
    COUNT(DISTINCT brand) AS total_brands,
    COUNT(DISTINCT subcategory) AS total_subcategories,
    COUNT(*) AS total_orders,
    SUM(sales_Amount) AS total_sales
FROM flipkart_data
GROUP BY category
ORDER BY total_sales DESC;

