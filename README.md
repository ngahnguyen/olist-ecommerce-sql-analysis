# olist-ecommerce-sql-analysis
SQL analysis of Olist e-commer data covering sales, customers, delivery performance, products, and sellers.
## Dataset
This project uses the Olist Brazilian E-Commerce Public Dataset available on Kaggle.
## SQL Skills Used
- joins
- group by
- aggregate functions
- case when
- common table expressions (CTEs)
- count(distinct)
- window functions
## Order and Delivery Performance

### Business Questions and Key Findings
### 1. How did order volume and delivery performance change over time? 

- The dataset contains **99,441 orders** from **September 2016 through October 2018**.
- **97.02%** of all orders were marked as delivered.
- Among orders with a recorded delivery date, **91.89%** arrived on time and **8.11%** arrived late.
- **2.98%** of orders had no recorded customer delivery date.
- Order activity expanded substantially after the platform's early 2016 period, with **45,101 orders in 2017** and **54,011 orders recorded through October 2018**.

_> Note: 2016 and 2018 are partial years, so annual totals should not be compared as full-year periods_. 

## Customer & Geographic Analysis

### Business Questions and Key Findings
### 1. Which customer states placed the most orders? Which customer states generated the most revenue?

- **São Paulo (SP)** was the largest customer market, with **41,746 orders**, representing about **42% of all orders** in the dataset.
- SP also generated the highest product revenue at approximately **$5.20 million**, accounting for about **38% of total product revenue**.
- **Rio de Janeiro (RJ)** ranked second with **12,852 orders** and approximately **$1.82 million** in revenue.
- **Minas Gerais (MG)** ranked third with **11,635 orders** and approximately **$1.59 million** in revenue.
- The top three states — **SP, RJ, and MG** — accounted for approximately **67% of all orders** and **63% of total product revenue**, showing a strong geographic concentration in Olist's customer base.
  
## Sales & Product Analysis

### Business Questions and Key Findings
### 1. How did monthly product revenue change over time?
- **November 2017** generated the highest monthly product revenue at approximately **1.01M**.
- Several months in 2018 also approached **1M**, showing stronger revenue performance in the later part of the dataset.

### 2. Which product categories generated the most revenue?
- **Health & Beauty (`beleza_saude`)** generated the highest total product revenue at approximately **1.26M**.
- It was followed by **Watches & Gifts** and **Bed, Bath & Table**.

### 3. How did product category performance change over time?
- Revenue increased substantially across several major product categories between 2017 and 2018.
- **Health & Beauty (`beleza_saude`) became the highest-revenue category in 2018**, increasing by approximately **60%** from 2017.
- Watches & Gifts (`relogios_presentes`) also grew strongly, increasing by approximately **44%**.
- Bed, Bath & Table (`cama_mesa_banho`) remained one of the strongest categories, although its growth was more modest at approximately **8%**.
- Some categories declined over the same period, including cool_stuff, toys, and garden tools, indicating that category performance did not grow uniformly.

### 4. Which states had the highest average revenue per order?
- **Paraíba (PB)** had the highest average product revenue per order at approximately **216.67**.
- **São Paulo (SP)** generated the highest total revenue and order volume, but its average revenue per order was lower at approximately **125.75**.
- This shows that the largest market by total sales is not necessarily the highest-value market per order.

> _Revenue is calculated from **order_items.price** and excludes freight. The 2018 data covers only part of the year._

## Seller Analysis

### Business Question and Key Findings

### 1. Which sellers generated the most revenue, and how do they rank?
- The top-ranked seller generated approximately **229.5K** in revenue, followed by sellers generating **222.8K** and **200.5K**.
- Revenue was concentrated among a relatively small group of top-performing sellers.

### 2. Which sellers handled the most unique orders?
- The highest-volume seller handled **1,854 unique orders**, followed by sellers with **1,806** and **1,706** orders.
- The seller with the highest order volume was not the same as the seller with the highest revenue.
- This suggests that seller performance depends on both **order volume** and **revenue per order**, not just the number of transactions.

