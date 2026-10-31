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
| **File used** | Cleaned version of `customer_shopping_data.csv` (no total_amount column) |
| **Rows** | 99,457 transactions |
| **Period** | 2021 to 2023 |
| **Malls** | 10 shopping malls across Istanbul |
| **License** | CC0 Public Domain |
| **Cleaned file** | `customer_shopping_data_cleaned.xlsx` in this repo |

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

## Findings
| # | Question | Answer |
|---|---|---|
| 1 | Total revenue | 68,551,365.91 TL |
| 2 | Top category by revenue | Clothing 31.08M (45.3%), Shoes 18.14M (26.5%), Technology 15.77M (23.0%). These three make up 94.8% of revenue |
| 3 | Mall with most transactions | Mall of Istanbul, 19,943 (Kanyon 19,823; Metrocity 15,011) |
| 4 | Top 10 customers by spend | Not informative: every customer appears once, and 1,001 customers tie at the maximum of 5,250 TL |
| 5 | Most popular payment method | Cash, 44,447 (44.7%); credit card 34,931 (35.1%); debit card 20,079 (20.2%) |
| 6 | Average spend per transaction by gender | Male 690.92 TL, Female 688.14 TL (0.4% apart) |
| 7 | Transactions per year | 2021: 45,382; 2022: 45,551; 2023: 8,524 (the data ends 8 March 2023, so 2023 is a partial year) |
| 8 | Age group with highest average spend | Middle Aged (30-50) 691.76 TL; Young Adult (20-29) 691.72; Senior (Above 50) 687.88; Teen (Below 20) 663.13 |

**Key takeaways**
- Three of ten malls (Mall of Istanbul 13.9M, Kanyon 13.7M, Metrocity 10.2M) generate 55.2% of revenue. The five smallest earn 3.3M to 3.5M each.
- Spend per transaction is almost identical across malls (about 674 to 705 TL), so the top malls win on transaction volume.

**Data quality note:** while cleaning, I added a total_amount column (quantity x price). A sanity check showed the source price column already includes quantity, so total_amount overstated revenue by about 3.7x. I removed it, and all figures use price.

**Limitations:** findings describe this dataset only. Several patterns are unusually uniform, which suggests the data may be simulated.

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
