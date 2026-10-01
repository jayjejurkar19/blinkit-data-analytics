# Blinkit Data Analytics Project

## 📊 Project Overview

This project analyzes Blinkit customer, order, product, and feedback data to identify key business trends and opportunities.

The analysis focuses on **customer value, product and category performance, profitability, discounts, customer satisfaction, and regional performance**.

The project was completed using **Excel, SQL, and Power BI**.

---

## 🛠️ Tools Used

* **Excel** – Data cleaning, exploration, calculations, and initial analysis
* **SQL** – Data analysis, joins, aggregations, filtering, and business questions
* **Power BI** – Interactive dashboard and data visualization

---

## 🎯 Business Questions

The analysis focuses on questions such as:

* Which customers generate the highest estimated revenue?
* Which product categories generate the most revenue?
* Which products and brands perform best?
* How do sales volume and profitability compare?
* Do higher discounts result in higher sales volume?
* What are the major customer feedback trends?
* Which customer segments have higher or lower satisfaction?
* Are high-value customers also highly satisfied?
* Which products are associated with negative feedback?
* Which locations have lower customer satisfaction?
* How has customer satisfaction changed over time?

---

## 📈 Key Insights

### Customer Revenue & Value

* The highest estimated-revenue customers generated approximately **₹37K–₹39.6K** each.
* The top customer generated approximately **₹39,634**.
* High-value customers were present across **New, Regular, and Premium&#xA0;**&#x73;egments.
* The average order value across order-item transactions was approximately **₹4,682**.
* One order had a calculated value of approximately **₹3.93 million**, which may represent a data-quality or outlier issue.

### Product Category Performance

* **Dairy & Breakfast** generated the highest revenue at approximately **₹639K**.
* **Pharmacy** generated approximately **₹592K**.
* **Fruits & Vegetables** generated approximately **₹559K**.
* **Pet Care** generated approximately **₹540K**.
* **Instant & Frozen Food** generated the lowest revenue among the analyzed categories at approximately **₹307K**.

### Top Products

* **Baby Food** generated approximately **₹65.2K** from 70 units.
* **Mangoes** generated approximately **₹56.5K**.
* **Bread** generated approximately **₹55.2K**.
* Other strong products included Vitamins, Toilet Cleaner, Dish Soap, Eggs, Onions, and Toothpaste.

### Sales & Profitability

The analysis showed that sales volume alone does not identify the most profitable products.

* **Frozen Vegetables** had the highest estimated profit at approximately **₹16.9K**.
* **Toothpaste** generated approximately **₹15.4K** estimated profit.
* **Pet Treats** generated approximately **₹14.6K** estimated profit.
* Several high-volume products operated with relatively low margins.

### Discounts & Sales Volume

* The highest observed product discount was approximately **40%**.
* The relationship between discount percentage and units sold was weakly negative, with a correlation of approximately **-0.13**.
* The analysis therefore does not provide strong evidence that larger discounts automatically result in higher sales volume.

### Customer Satisfaction

Customer feedback was relatively balanced:

| Feedback | Percentage |
| -------- | ---------: |
| Neutral  |     34.76% |
| Negative |     32.84% |
| Positive |     32.40% |

Among feedback categories:

* **Product Quality:** 3.32 average rating
* **Delivery:** 3.33
* **App Experience:** 3.36
* **Customer Service:** 3.37

### High-Value Customers

A considerable number of high-value customers had average ratings of **2 or below**.

Some customers with estimated revenue above **₹30K** still reported average ratings between **1 and 2**, highlighting a potential customer-retention risk.

### Regional Satisfaction

The lowest average ratings included:

* **Muzaffarpur:** 2.00
* **Vijayanagaram:** 2.25
* **Sultan Pur Majra:** 2.29

This indicates differences in customer experience across geographical areas.

### Satisfaction Over Time

* Average rating started at **3.42 in March 2023**.
* The highest observed rating was **3.47 in March 2024**.
* The lowest observed rating was **3.13 in November 2024**.
* A **0.23-point drop from October to November 2024** was one of the largest month-over-month declines.

---

## 💡 Business Recommendations

Based on the analysis:

1. Retain high-value customers, particularly those with low satisfaction.
2. Maintain inventory availability for high-performing categories.
3. Investigate product quality and delivery issues.
4. Evaluate discounts based on their actual impact on sales.
5. Track profitability alongside revenue and sales volume.
6. Investigate regional differences in customer satisfaction.
7. Monitor customer satisfaction monthly.
8. Validate extreme values and metrics affected by one-to-many joins.

---

## 📊 Dashboard

### Power BI Dashboard

The Power BI dashboard provides an interactive view of key business metrics and trends.

---

## 📁 Project Structure

```text
blinkit-data-analytics/
│
├── data/
│   └── dataset.xlsx
│
├── sql/
│   └── analysis.sql
│
├── excel/
│   └── analysis.xlsx
│
├── powerbi/
│   └── blinkit_dashboard.pbix
│
├── images/
│   └── dashboard.png
│
└── README.md
```

---

