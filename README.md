# olist-ecommerce-sql-analysis
SQL analysis of Olist e-commer data covering sales, customers, delivery performance, products, and sellers.
## SQL Skills Used
- joins
- group by
- aggregate functions
- case when
- common table expressions (CTEs)
- count(distinct)
- window functions
## Order and Delivery Performance

### Business Question
How did order volume and delivery performance change over time?

### Key Findings
- The dataset contains **99,441 orders** from **September 2016 through October 2018**.
- **97.02%** of all orders were marked as delivered.
- Among orders with a recorded delivery date, **91.89%** arrived on time and **8.11%** arrived late.
- **2.98%** of orders had no recorded customer delivery date.
- Order activity expanded substantially after the platform's early 2016 period, with **45,101 orders in 2017** and **54,011 orders recorded through October 2018**.

_> Note: 2016 and 2018 are partial years, so annual totals should not be compared as full-year periods_. 
