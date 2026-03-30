#  E-Commerce SQL Analytics Project

## 📌 Overview
This project simulates a real-world **e-commerce data environment** (Amazon-style) to solve business problems using **advanced SQL**.

The dataset includes customers, orders, products, payments, shipping, and inventory data over a 3-month period.

---

## 🎯 Objective
To analyze and extract meaningful business insights using SQL techniques such as:
- Joins
- Aggregations
- Window Functions
- CTEs
- Stored Procedures

---

## 🗂️ Dataset Structure

The project contains the following tables:

- Customers  
- Products  
- Category  
- Sellers  
- Orders  
- Order_Items  
- Payments  
- Shipping  
- Inventory  

---

## 🧠 Business Problems Solved

### 1. Top Selling Products
- Top 10 products by total sales value  
- Includes quantity sold and revenue  

### 2. Revenue by Category
- Total revenue per category  
- Percentage contribution  

### 3. Average Order Value (AOV)
- AOV per customer  
- Only customers with more than 5 orders  

### 4. Monthly Sales Trend
- Monthly revenue analysis  
- Current vs previous month comparison  

### 5. Customers with No Purchases
- Registered users with zero orders  

### 6. Best-Selling Categories by State
- Top category in each state  
- Total sales per category  

### 7. Customer Lifetime Value (CLTV)
- Total spend per customer  
- Ranked by value  

### 8. Inventory Stock Alerts
- Products with stock < 10  
- Includes restock date  

### 9. Shipping Delays
- Orders shipped after 7 days  
- Includes customer and order details  

### 10. Payment Success Rate
- Overall success percentage  
- Breakdown by payment status  

### 11. Top Performing Sellers
- Top 5 sellers by revenue  
- Success rate of orders  

### 12. Product Profit Margin
- Profit = Price - COGS  
- Ranked from highest to lowest  

### 13. Most Returned Products
- Top 10 returned products  
- Return rate (%)  

### 14. Orders Pending Shipment
- Paid but not shipped orders  

### 15. Inactive Sellers
- Sellers with no sales in last 6 months  

### 16. Customer Segmentation
- Returning (>5 returns) vs New customers  

### 17. Cross-Sell Opportunities
- Customers who bought Product A but not Product B  

### 18. Top Customers by State
- Top 5 customers per state  
- Based on order count and revenue  

### 19. Revenue by Shipping Provider
- Revenue handled per provider  
- Avg delivery time  

### 20. Year-over-Year Revenue Decline
- Compare product revenue (2022 vs 2023)  
- % decrease calculation  

---

## ⚙️ Final Task

### 🔧 Inventory Automation

Create a **stored procedure/function** that:
- Updates inventory after each sale  
- Deducts sold quantity from stock  
- Maintains real-time accuracy  

---

## 🛠️ Tools Used
- SQL (MySQL)
- CSV Data


---

## 💼 Key Skills Demonstrated
- Advanced SQL querying  
- Business problem solving  
- Data analysis & insights  
- Data modeling  
- Automation using stored procedures  

---

## 🚀 How to Use

1. Import CSV files into your SQL database  
2. Create tables based on schema  
3. Run queries for each business problem  


---

## 👤 Author
**Muhammed Shadh**  

---

## ⭐ Support
If you found this project useful, consider giving it a ⭐ on GitHub!
