Flipkart Sales Analysis

📊 Project Overview

This project analyzes Flipkart sales data using MySQL and Power
BI to identify patterns in sales, profitability, customer behavior,
pricing, discounts, product variety, and regional performance.

The project follows a simple analytics workflow:

SQL Data Analysis → Business Insights → Power BI Dashboard

🛠️ Tools & Technologies

MySQL --- data exploration, aggregation, and business analysis

Power BI --- interactive dashboard and data visualization

DAX --- measures and calculated metrics

SQL --- analytical queries and insight generation

🎯 Business Questions

The analysis focuses on questions such as:

Which states generate the highest number of orders?

Which categories perform best across different states?

How do discounts vary by category and state?

Which categories have the highest profit margins?

Which categories have stronger repeat-purchase activity?

What is the average selling price by category?

Which categories have the greatest product variety?

Which categories have the most brands?

Is greater product/brand variety associated with higher sales?

🔍 Key Analyses

1. Orders by State

State-wise order counts were analyzed to identify regions with higher
order volumes.

2. Category Performance by State

Conditional aggregation was used to compare Electronics, Fashion, Books,
Home & Kitchen, Mobiles, and Beauty across states.

3. Discount Analysis

Average discount percentages were compared across categories and states
to understand pricing and promotional patterns.

4. Profit Margin by Category

Profit margin was calculated using:

Profit Margin % = Total Profit / Total Sales × 100

This helps compare profitability independently of sales volume.

5. Repeat Customer Analysis

Customers with multiple purchases within the same category were
identified using:

GROUP BY

COUNT(*)

HAVING

This provides an initial view of repeat-purchase behavior.

6. Average Selling Price

Average selling prices were compared across categories to understand
differences in product price levels.

7. Subcategory Diversity

Distinct subcategories were counted for each category to measure product
variety.

8. Brand Diversity

Distinct brands were counted within each category to understand brand
variety.

9. Combined Category Analysis

Brand count, subcategory count, order volume, and total sales were
combined to explore the relationship between product variety and sales
performance.

💡 Key Insights

Uttar Pradesh records the highest order volume among the analyzed
states.

Electronics shows strong order volume and high profitability in the
dataset.

Home & Kitchen and Electronics have profit margins above 29% based
on the analyzed data.

Beauty has relatively lower order volume and profit margin compared
with several other categories.

Electronics has the greatest number of distinct subcategories and
brands.

Beauty has relatively high brand variety despite its lower order
volume.

Mobile products have an average selling price of approximately
₹26,000 in the analyzed dataset.

Repeat-purchase analysis shows strong repeat activity among some
Electronics customers.

Note: These findings describe patterns in this dataset.
Relationships such as discounts → sales or product variety → sales
should not automatically be interpreted as causal relationships
without further statistical analysis.

📈 Power BI Dashboard

The Power BI dashboard provides an interactive view of the analysis,
including:

Total Sales

Total Profit

Average Delivery Time

Total Orders

Orders by State

Orders by Category

Orders by Payment Mode

Order Status

Product Ratings

Sales/category analysis

Geographic distribution

Dashboard Features

State slicer

Category slicer

Month slicer

KPI cards

Interactive charts

Geographic visualization

Category-level comparisons

🧠 SQL Concepts Demonstrated

This project demonstrates practical use of:

SELECT

WHERE

GROUP BY

ORDER BY

HAVING

COUNT()

COUNT(DISTINCT ...)

SUM()

AVG()

CASE WHEN

Conditional aggregation

Business-oriented aggregations

Additional SQL practice from related analysis includes:

LEFT JOIN

Common Table Expressions (CTEs)

Joining tables using primary/foreign-key relationships

Group-level comparisons

📂 Project Structure

Flipkart-Sales-Analysis/
│
├── README.md
│
├── SQL/
│   └── flipkart_analysis.sql
│
├── PowerBI/
│   └── Flipkart_Sales_Dashboard.pbix
│
└── Images/
    └── dashboard.png

🚀 Future Improvements

Possible extensions to the project include:

Calculate category-level repeat-purchase rates instead of only
repeat counts.

Analyze sales by price ranges.

Test the relationship between discounts and order volume.

Test whether product variety is associated with sales.

Add time-based sales trends and month-over-month analysis.

Add customer segmentation.

Analyze average order value.

Add advanced DAX measures.

Apply statistical methods to validate relationships.

👨‍💻 Project Summary

This project demonstrates an end-to-end approach to sales data analysis
using SQL and Power BI.

The analysis moves beyond basic reporting by investigating sales,
profitability, customer behavior, pricing, discounts, geographic demand,
brand diversity, and product variety.

Tools: MySQL | Power BI | DAX
Focus: Data Analysis | Business Intelligence | Data Visualization# flipkart_sales_analysis
