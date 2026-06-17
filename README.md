# Customer-RFM-Analysis-using-SQL-and-Power-BI

## Project Overview

This project demonstrates an end-to-end customer analytics workflow using SQL and Power BI to perform **RFM (Recency, Frequency, Monetary) Analysis** on an e-commerce retail dataset.

The objective was to transform raw transactional data into actionable customer segments that can help businesses improve customer retention, increase customer lifetime value, and make more informed marketing decisions.

The project covers the complete analytical pipeline—from data cleaning and transformation in PostgreSQL to interactive business intelligence dashboards in Power BI.

---

## Business Problem

Every customer contributes differently to a business.

Treating all customers the same often leads to inefficient marketing campaigns, unnecessary customer acquisition costs, and missed retention opportunities.

Using RFM analysis, customers can be grouped based on purchasing behaviour, allowing businesses to:

* Identify their most valuable customers.
* Detect customers at risk of churn.
* Recognize loyal and repeat buyers.
* Develop targeted marketing strategies for each customer segment.

---

## Project Objectives

* Clean and prepare a real-world transactional dataset.
* Calculate customer-level RFM metrics.
* Score customers using SQL window functions.
* Segment customers based on purchasing behaviour.
* Build an interactive Power BI dashboard for business exploration.
* Generate actionable business insights from the resulting customer segments.

---

## Tools & Technologies

* **PostgreSQL** – Data cleaning, transformation, RFM calculation
* **SQL** – Data processing and customer segmentation
* **Power BI Desktop** – Interactive dashboard development
* **Git & GitHub** – Version control and project documentation

---

## Dataset

**Dataset:** Online Retail Transaction Dataset

The dataset contains historical online retail transactions including:

* Customer ID
* Invoice Number
* Purchase Date
* Product Information
* Quantity
* Unit Price

---

## Data Preparation

The original dataset contained **541,909** transaction records.

The following preprocessing steps were performed:

* Removed records with missing Customer IDs.
* Removed cancelled transactions.
* Removed transactions with non-positive quantities.
* Removed transactions with non-positive unit prices.
* Created a Revenue column.
* Generated customer-level RFM metrics.

Final cleaned dataset:

* **397,880 valid transactions**
* **4,338 unique customers**

---

## RFM Methodology

Each customer was evaluated using three behavioural metrics.

### Recency

Number of days since the customer's last purchase.

### Frequency

Number of unique purchases made by the customer.

### Monetary

Total amount spent by the customer.

Customers were then assigned scores from **1 to 5** for each metric using SQL window functions.

The three scores were combined into an RFM score and used to classify customers into behavioural segments.

---

## Customer Segments

The project classified customers into six business-oriented segments:

* Champions
* Loyal Customers
* Potential Loyalists
* At Risk
* Hibernating
* Others

These segments help businesses prioritize marketing efforts and customer retention strategies.

---

## Power BI Dashboard

The dashboard includes:

* KPI Cards

  * Total Customers
  * Total Revenue
  * Champions Count
  * At Risk Count

* Revenue by Customer Segment

* Customer Segment Distribution

* RFM Heatmap

* Customer Detail Table

* Interactive Segment Filter

The dashboard enables users to explore customer behaviour dynamically through cross-filtering and drill-down analysis.

---

## Key Business Insights

The completed analysis revealed several meaningful business findings.

* The cleaned dataset contains **4,338** unique customers.

* The **Champions** segment consists of **605 customers** (approximately **13.95%** of the customer base).

* Despite representing only a small proportion of customers, Champions generate approximately **₹5.24M** of the total **₹8.91M** revenue (**~58.8%**), demonstrating a strong concentration of customer value.

* The **At Risk** segment represents a substantial revenue opportunity, highlighting customers who should be prioritized through retention campaigns.

* Interactive filtering demonstrates how customer behaviour and revenue contribution change across different RFM score combinations and customer segments.

---

## Repository Structure

```text
RFM-Customer-Segmentation/
│
├── data/
│   ├── Raw Data/
│   └── Processed Data/
│
├── dashboard/
│   └── RFM_Dashboard.pbix
│
├── documentation/
│   └── Project_Report_rfm_analysis.pdf
│
├── screenshots/
│   ├── General
│   ├── FPs
│   ├── At_Risk
│
├── sql/
│   ├── DB_Table_creation.sql
│   ├── Data_cleaning.sql
│   ├── cust_rfm.sql
│   ├── rfm_scoring.sql
│   └── segmentation.sql
|   |__ PBI_dataset.sql
│
└── README.md
```

---

## Skills Demonstrated

This project demonstrates practical experience in:

* SQL Data Cleaning
* Data Transformation
* Customer Analytics
* RFM Analysis
* Customer Segmentation
* SQL Window Functions
* Business Intelligence
* Power BI Dashboard Design
* Exploratory Data Analysis (EDA)
* Business Insight Generation
* Data Storytelling

---

## Conclusion

This project demonstrates a complete customer analytics workflow beginning with raw transactional data and ending with actionable business insights.

By combining PostgreSQL for data preparation and Power BI for visualization, the project illustrates how customer behaviour can be translated into meaningful business intelligence. The resulting RFM segmentation enables organizations to identify high-value customers, prioritize retention efforts, and support data-driven marketing decisions through an interactive and reproducible analytical process.
