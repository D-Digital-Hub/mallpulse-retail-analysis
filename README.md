# MallPulse Istanbul: Retail Shopping Intelligence

An end-to-end data analytics project on over **99,000 retail transactions** from **10 shopping malls in Istanbul, Turkey (2021 to 2023)**. Built as part of the **ALIWA Data Analytics Training Program**.

## Project overview
MallPulse is a retail analytics firm that tracks shopping behaviour across malls in Istanbul. Acting as a junior data analyst, the goal was to understand customer spending patterns, find the top-performing product categories, compare payment methods and test whether public holidays change shopping activity, so that malls can plan promotions and staffing better.

## My role
This was a group project. My part:
- I cleaned the dataset in Excel
- I wrote my own SQL analysis and a written explanation of its results
- I worked with my group on the Power BI dashboard and the final presentation

## Project structure
```
   mallpulse-retail-analysis/
   ├── customer_shopping_data_cleaned.xlsx
   ├── mallpulse_analysis.sql
   └── README.md
```
The SQL file contains the data cleaning, database design and all queries: [`mallpulse_analysis.sql`](./mallpulse_analysis.sql)

## Dataset
| Detail | Info |
|---|---|
| **Source** | [Kaggle: Customer Shopping Dataset](https://www.kaggle.com/datasets/mehmettahiraslan/customer-shopping-dataset) |
| **File used** | Cleaned version of `customer_shopping_data.csv` |
| **Rows** | About 99,000 transactions |
| **Period** | 2021 to 2023 |
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
| `payment_method` | Cash, Credit Card or Debit Card |
| `invoice_date` | Date of transaction |
| `shopping_mall` | Name of the mall |

## Data cleaning
- Converted `invoice_date` to a proper date format
- Standardized column names to lowercase with underscores
- Removed leading and trailing spaces from text fields
- Removed duplicate rows
- Added a `total_amount` column (`quantity x price`, rounded to 2 decimal places)
- Checked for missing, zero or negative values

## Database design
The cleaned data was loaded into a SQL Server database with suitable data types and rules, for example age must be greater than 0 and customer_id cannot be empty.

## Business questions and findings
| # | Question | Answer |
|---|---|---|
| Q1 | What is the total revenue across all transactions? | To be added |
| Q2 | Which product category generates the highest total revenue? | To be added |
| Q3 | Which shopping mall has the most transactions? | To be added |
| Q4 | Who are the top 10 customers by total amount spent? | To be added |
| Q5 | What is the most popular payment method? | To be added |
| Q6 | What is the average spending per transaction for each gender? | To be added |
| Q7 | How many transactions were recorded each year? | To be added |
| Q8 | Which age group spends the most on average? | To be added |

## Power BI dashboard
The group built a Power BI dashboard as part of this project. My own rebuilt version is in progress and will be added here with screenshots.

Questions the dashboard answers:
| # | Question | Chart type |
|---|---|---|
| D1 | How does total monthly revenue trend over 3 years? | Line chart |
| D2 | Which mall consistently generates the most revenue? | Horizontal bar chart |
| D3 | Do customers spend more on public holidays than on regular days? | Bar chart |
| D4 | Which categories are most popular on holidays vs regular days? | Grouped bar chart |
| D5 | What is the breakdown of payment methods? | Donut chart |
| D6 | How does spending differ between male and female customers? | Grouped bar chart |

## Tools used
- **Microsoft Excel:** data inspection and cleaning
- **SQL Server:** database design, data loading and business queries
- **Power BI:** dashboard and visualization

## Contact
**John Ohaka**
- [LinkedIn](https://www.linkedin.com/in/john-ohaka)
- [GitHub](https://github.com/D-Digital-Hub)
- johnohaka28@gmail.com
