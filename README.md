# 🛍️ MallPulse Istanbul — Retail Shopping Intelligence

A full end-to-end data analytics project analyzing over **99,000 retail transactions** across **10 shopping malls in Istanbul, Turkey (2021–2023)**.

Built as part of the **ALIWA Data Analytics Training Program**.

---

## 📌 Project Overview

MallPulse is a retail analytics firm that tracks shopping behaviour across multiple malls in Istanbul. As a Junior Data Analyst, the goal was to investigate customer spending patterns, identify top-performing product categories, analyze payment method preferences, and determine whether public holidays influence shopping activity — so malls can plan better promotions, staffing, and customer engagement strategies.

---

## 📂 Project Structure

```
mallpulse-retail-analysis/
│
├── data/
│   └── customer_shopping_data.csv       # Source dataset (Kaggle)
│
├── sql/
│   └── mallpulse_analysis.sql           # Data cleaning, DB design & all queries
│
├── dashboard/
│   └── mallpulse_dashboard.pbix         # Power BI dashboard (group project)
│
└── README.md
```

---

## 🗃️ Dataset

| Detail | Info |
|---|---|
| **Source** | [Kaggle — Customer Shopping Dataset](https://www.kaggle.com/datasets/mehmettahiraslan/customer-shopping-dataset) |
| **File** | `customer_shopping_data.csv` |
| **Rows** | ~99,000 transactions |
| **Period** | 2021 – 2023 |
| **Malls** | 10 shopping malls across Istanbul |

### Columns
| Column | Description |
|---|---|
| `invoice_no` | Unique transaction ID |
| `customer_id` | Customer identifier |
| `gender` | Customer gender |
| `age` | Customer age |
| `category` | Product category |
| `quantity` | Number of items purchased |
| `price` | Price per unit |
| `payment_method` | Cash, Credit Card, or Debit Card |
| `invoice_date` | Date of transaction |
| `shopping_mall` | Name of the mall |

---

## 🧹 Part 1 — Data Cleaning & SQL Analysis

### Cleaning Steps
- Converted `invoice_date` to proper date format
- Standardized column names to lowercase with underscores
- Removed leading/trailing spaces from text fields
- Removed duplicate rows
- Added `total_amount` column (`quantity × price`, rounded to 2 decimal places)
- Investigated and documented missing, zero, or negative values

### Database Design
Loaded the cleaned data into a structured SQL database with appropriate data types and constraints (e.g. `age INTEGER CHECK age > 0`, `customer_id TEXT NOT NULL`).

### Business Questions Answered

| # | Question |
|---|---|
| Q1 | What is the total revenue generated across all transactions? |
| Q2 | Which product category generates the highest total revenue? |
| Q3 | Which shopping mall has the highest number of transactions? |
| Q4 | Who are the top 10 customers by total amount spent? |
| Q5 | What is the most popular payment method? |
| Q6 | What is the average spending per transaction for each gender? |
| Q7 | How many transactions were recorded each year? |
| Q8 | Which age group spends the most on average? |

> All queries are available in [`sql/mallpulse_analysis.sql`](./sql/mallpulse_analysis.sql)

---

## 📊 Part 2 — Power BI Dashboard (Group Project)

**Dashboard Title:** *MallPulse Istanbul Shopping Intelligence Report*

### Dashboard Questions Answered
| # | Question | Chart Type |
|---|---|---|
| D1 | How does total monthly revenue trend over 3 years? | Line Chart |
| D2 | Which mall consistently generates the most revenue? | Horizontal Bar Chart |
| D3 | Do customers spend more on public holidays vs regular days? | Bar Chart |
| D4 | Which categories are most popular on holidays vs regular days? | Grouped Bar Chart |
| D5 | What is the breakdown of payment methods? | Donut Chart |
| D6 | How does spending differ between male and female customers? | Grouped Bar Chart |
| D7–D8 | 2 additional business questions from data patterns | Custom visuals |

### Dashboard Features
- Consistent color scheme across all visuals
- At least 2 slicers/filters for interactivity
- Summary box with key findings
- All charts include titles and labels

---

## 🎤 Part 3 — Group Presentation

The group delivered a 15–20 minute presentation covering:
- Business problem & stakeholder context
- Dataset overview & data cleaning summary
- Database design decisions
- SQL findings & insights
- Dashboard walkthrough
- Key business recommendations
- Challenges and lessons learned

---

## 🛠️ Tools Used

- **Microsoft Excel** — Initial data inspection and cleaning
- **SQL** — Database design, data loading, and business queries
- **Power BI** — Interactive dashboard and data visualization
- **Canva / Google Slides** — Group presentation

---

## 👥 Team

Built collaboratively as a group project under the **ALIWA Data Analytics Training Program**.

---

## 📬 Connect

**John Ohaka**
- 🔗 [LinkedIn](https://www.linkedin.com/in/john-ohaka-8b1828405/)
- 🐙 [GitHub](https://github.com/D-Digital-Hub)
- ✉️ johnohaka28@gmail.com

---

> *"A great analyst does not just find numbers. They find the story the numbers are trying to tell."*
