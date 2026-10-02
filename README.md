# Blinkit Data Analytics Project

## 📊 Project Overview

This project analyzes **Blinkit customer, order, product, and feedback data** to identify business trends and opportunities.

The analysis focuses on:

* Customer segmentation and customer value
* Product and category performance
* Revenue and estimated profitability
* Sales volume and margin analysis
* Customer feedback and satisfaction
* Negative feedback
* Regional performance
* Monthly satisfaction trends

The project was completed using **Excel, SQL, and Power BI**.

---

## 🛠️ Tools Used

* **Excel** – Data cleaning, formatting, filtering, validation, and category-level analysis
* **SQL** – Data analysis, joins, aggregations, filtering, and business questions
* **Power BI** – Data modeling, DAX measures, KPIs, interactive dashboard, and data visualization

---

## 📗 Excel – Data Cleaning & Preparation

Excel was used for data cleaning, formatting, validation, and initial exploration before SQL analysis and Power BI development.

### Data Cleaning & Formatting

* Removed **duplicate records** from the dataset.
* Reviewed the data for consistency and formatting issues.
* Standardized date values into **DD-MM-YYYY** format.
* Corrected text fields and ensured consistent text formatting.
* Applied the **₹ Indian Rupee currency format** to columns representing monetary amounts.
* Checked numerical columns to ensure values were correctly formatted.
* Used **Excel Filters** to examine individual product categories and identify category-level patterns.
* Reviewed the cleaned dataset before using it for SQL analysis and Power BI dashboard development.

---

## 🎯 Business Questions

The analysis focuses on questions such as:

1. Which customers generate the highest estimated revenue?
2. Which product categories generate the most revenue?
3. Which products and brands perform best?
4. How do sales volume and profitability compare?
5. Do higher discounts result in higher sales volume?
6. What are the major customer feedback trends?
7. Which customer segments have higher or lower satisfaction?
8. Are high-value customers also highly satisfied?
9. Which products are associated with negative feedback?
10. Which locations have lower customer satisfaction?
11. How has customer satisfaction changed over time?
12. Which categories generate the highest revenue, units sold, and estimated profit?

---

## 📈 Key Insights

### Customer Segmentation

The dashboard analyzes four customer segments:

* Inactive
* New
* Premium
* Regular

The customer distribution is relatively balanced across the four segments, allowing customer count and satisfaction to be compared between segments.

### Category Performance

The analysis compares categories using **revenue, units sold, estimated profit, and margin percentage**.

**Dairy & Breakfast** generated approximately **₹639K** in revenue, while **Fruits & Vegetables** generated approximately **₹559K**.

### Revenue & Profitability

The analysis compares revenue with estimated profit and margin percentage to identify differences between sales performance and profitability.

The dashboard reports approximately:

* **Total Revenue:** ₹4.97M
* **Estimated Profit:** ₹1.36M
* **Average Margin Percentage:** 27.78%

### Customer Satisfaction

Customer feedback was analyzed using ratings and sentiment.

The dashboard reports:

* **Average Rating:** 3.34
* **Negative Feedback Percentage:** approximately 33%

Customer satisfaction was also analyzed by customer segment and across monthly periods.

### Product & Brand Performance

The analysis includes **Top 10 Products by Revenue** and **Top 10 Brands by Revenue** to identify the products and brands contributing the most revenue.

---

## 💡 Business Recommendations & Action Plan

### 1. Reduce Negative Customer Feedback

**Finding:** Negative feedback represents approximately **33%** of customer feedback.

**Actions:**

* Identify products and categories generating the highest negative feedback.
* Analyze negative feedback by product quality, delivery, app experience, and customer service.
* Investigate recurring complaints and identify their root causes.
* Monitor negative feedback percentage monthly.

**Business Impact:** Improving recurring customer issues can help improve customer satisfaction and retention.

---

### 2. Focus on High-Value Customers With Low Satisfaction

**Finding:** Customer value and customer satisfaction should be monitored together.

**Actions:**

* Identify high-value customers with below-average ratings.
* Analyze the products and services associated with their negative feedback.
* Prioritize retention efforts for valuable customers experiencing repeated issues.
* Track their satisfaction after corrective actions.

**Business Impact:** Resolving issues for valuable customers can help protect repeat revenue and improve retention.

---

### 3. Maintain Availability of High-Performing Categories

**Finding:** Several categories contribute significant revenue.

**Actions:**

* Monitor inventory availability for high-revenue categories.
* Identify high-performing products within these categories.
* Prioritize stock availability for frequently purchased products.
* Monitor category performance regularly.

**Business Impact:** Maintaining product availability can reduce lost-sales opportunities.

---

### 4. Improve Product and Service Quality

**Finding:** The overall average rating is **3.34**, indicating opportunities to improve customer experience.

**Actions:**

* Identify products repeatedly associated with low ratings.
* Analyze negative feedback by feedback category.
* Investigate whether issues relate to product quality, delivery, customer service, or app experience.
* Work with the relevant teams to address recurring issues.

**Business Impact:** Addressing recurring problems can improve customer satisfaction and reduce negative feedback.

---

### 5. Evaluate Discounts Based on Their Business Impact

**Finding:** Discounts should be evaluated alongside sales and profitability rather than units sold alone.

**Actions:**

* Compare discount percentage with units sold and revenue.
* Analyze whether discounted products generate sufficient estimated profit.
* Identify products where discounts have limited impact on sales.
* Review discount strategies regularly.

**Business Impact:** A data-driven discount strategy can help balance sales growth with profitability.

---

### 6. Monitor Profitability Alongside Revenue

**Finding:** High revenue does not necessarily mean high estimated profitability.

**Actions:**

* Monitor Revenue, Units Sold, Estimated Profit, and Margin Percentage together.
* Identify high-revenue products with relatively low margins.
* Identify products generating stronger estimated profit.
* Consider profitability when evaluating promotions and product performance.

**Business Impact:** This supports more profitable and sustainable revenue growth.

---

### 7. Investigate Regional Differences in Customer Satisfaction

**Finding:** Customer ratings can vary across geographical areas.

**Actions:**

* Compare average ratings by area.
* Identify areas with consistently lower ratings.
* Analyze negative feedback from those locations.
* Investigate delivery, product, and service issues affecting those areas.
* Track regional satisfaction over time.

**Business Impact:** Location-specific analysis can help identify operational problems that require targeted action.

---

### 8. Establish Regular KPI Monitoring

**Actions:**

* Review dashboard KPIs monthly.
* Monitor revenue, orders, units sold, profit, margins, ratings, and negative feedback.
* Compare performance across categories, customer segments, products, brands, and areas.
* Investigate significant changes and take corrective action.

**Business Impact:** Regular monitoring helps identify performance changes early and supports data-driven decision-making.

---

# 📊 Power BI Dashboard

The Power BI dashboard provides an interactive view of **revenue, profitability, customer performance, product performance, customer satisfaction, and feedback**.

## 📌 Key Performance Indicators (KPIs)

| KPI                              |      Value |
| -------------------------------- | ---------: |
| **Estimated Profit**             | **₹1.36M** |
| **Average Margin Percentage**    | **27.78%** |
| **Negative Feedback Percentage** |   **0.33** |
| **Total Revenue**                | **₹4.97M** |
| **Total Units Sold**             |    **10K** |
| **Total Orders**                 |     **5K** |
| **Total Customers**              |     **3K** |
| **Average Rating**               |   **3.34** |

## 📊 Dashboard Visuals

### Customer Analysis

* **Customer Segment Distribution** — Donut Chart
* **Customer Segment vs Customer Count, Average Rating & Negative Feedback** — Matrix
* **Monthly Satisfaction Trend** — Line Chart

### Product & Brand Analysis

* **Top 10 Products by Revenue**
* **Top 10 Brands by Revenue**

### Category Analysis

* **Revenue vs Margin by Category** — Scatter Chart
* **Total Revenue, Total Units Sold & Estimated Profit by Category** — Matrix

### Regional Analysis

* **Total Orders and Total Revenue by Area** — Table

## 🎛️ Dashboard Slicers

The dashboard includes:

* **Category**
* **Customer Segment**
* **Year**

The **Year** slicer allows users to filter between:

* 2023
* 2024

---

## 🧮 DAX Measures

### Average Rating

```dax
average rating =
average(blinkit_customer_feedback[rating])
```

### Negative Feedback %

```dax
negative feedback % =
divide(
calculate(
countrows(blinkit_customer_feedback),
blinkit_customer_feedback[sentiment] = "negative"
),
countrows(blinkit_customer_feedback)
)
```

### Negative Feedback Count

```dax
negative feedback count =
calculate(
countrows(blinkit_customer_feedback),
blinkit_customer_feedback[sentiment] = "negative"
)
```

### Customer Count

```dax
customer count =
distinctcount(blinkit_customers[customer_id])
```

### Total Customers

```dax
total customers =
distinctcount(blinkit_customers[customer_id])
```

### Average Order Value

```dax
average order value =
divide(
[total revenue],
[total orders]
)
```

### Estimated Profit

```dax
estimated profit =
sumx(
blinkit_order_items,
blinkit_order_items[quantity] *
blinkit_order_items[unit_price] *
related(blinkit_products[margin_percentage]) / 100
)
```

### Total Orders

```dax
total orders =
distinctcount(blinkit_order_items[order_id])
```

### Total Revenue

```dax
total revenue =
sumx(
blinkit_order_items,
blinkit_order_items[quantity] *
blinkit_order_items[unit_price]
)
```

### Total Units Sold

```dax
total units sold =
sum(blinkit_order_items[quantity])
```

### Average Margin %

```dax
average margin % =
average(blinkit_products[margin_percentage])
```

---

## 📁 Project Structure

```text
blinkit-data-analytics/
│
├── README.md
│
├── Blinkit_dataset_clean.xlsx
│   └── Cleaned and formatted dataset
│
├── blinkit_customers.csv
├── blinkit_products.csv
├── blinkit_order_items.csv
├── blinkit_customer_feedback.csv
│
├── blinkit_eda.sql
│   └── SQL analysis and business questions
│
├── BLINKIT E-COMMERCE DASHBOARD.pbix
│   └── Power BI dashboard
│
├── Blinkit e-commerce Dashboard ScreenShot1.png
│   └── Power BI dashboard screenshot – Page 1
│
└── Blinkit e-commerce Dashboard ScreenShot2.png
    └── Power BI dashboard screenshot – Page 2
```


---

## 🚀 Project Outcome

This project demonstrates an end-to-end **Data Analytics workflow** using Excel, SQL, and Power BI.

It demonstrates practical skills in:

* Data cleaning and preparation
* Excel data exploration
* SQL analysis
* Data aggregation and joins
* Customer segmentation
* Revenue and profitability analysis
* DAX measures
* Customer feedback analysis
* Power BI dashboard development
* Business-focused data interpretation
* Data-driven business recommendations
