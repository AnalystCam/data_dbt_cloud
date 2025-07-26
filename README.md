
# Customer Sales & Revenue Analytics

A full-stack analytics project demonstrating data engineering, modelling, and business intelligence using modern tools: `dbt`, `Snowflake`, and `Power BI`.

---

## Project Overview

This project simulates an e-commerce company analyzing customer orders, revenue trends, product performance, and supplier activity. It covers the entire analytics pipeline from raw data ingestion to stakeholder-facing dashboards.

**Key Goals:**
- Build scalable data pipelines and models using SQL & dbt
- Clean and transform raw CSV files into a Snowflake data warehouse
- Generate insightful Power BI dashboards for decision-making
- Apply analytics engineering principles: testing, documentation, version control

---

## 🛠 Tech Stack

| Layer         | Tool          | Purpose                                  |
|---------------|---------------|------------------------------------------|
| **Storage**   | Snowflake     | Cloud data warehouse                     |
| **Modeling**  | dbt           | Data transformations, tests, docs        |
| **Orchestration** | dbt Cloud / CLI | Scheduled model runs                    |
| **Visualization** | Power BI      | Dashboards & reporting for stakeholders  |
| **Version Control** | Git + GitHub | Code and model management               |

---

## 🗂 Folder Structure

```
project-root/
│
├── models/
│   ├── staging/               # Cleaned staging tables (stg_customers, etc.)
│   └── customer_revenue/      # Specific domain (orders_fact, customer_summary)
│
├── seeds/                     # Raw CSVs: Customers, Orders, Products, etc.
│
├── snapshots/ 
│
├── dbt_project.yml            # Project config
├── README.md                  # This file
```

---

##  Datasets Used

- `Customers.csv`
- `Dates.csv`
- `Employers.csv`
- `OrderItems.csv`
- `Orders.csv`
- `Products.csv`
- `Stores.csv`
- `Suppliers.csv`

> 📂 All datasets are placed in the `seeds/` folder and loaded into Snowflake via `dbt seed`.

---

## ⚙️ Setup Instructions

### 1.  Clone the Project

```bash
git clone https://github.com/your-username/customer-revenue-analytics.git
cd customer-revenue-analytics
```

### 2.  Configure dbt Profile (`~/.dbt/profiles.yml`)

Example for Snowflake:

```yaml
your_project_name:
  target: dev
  outputs:
    dev:
      type: snowflake
      account: <your_account_id>
      user: <your_username>
      password: <your_password>
      role: <your_role>
      database: DB_SELLBOSS
      warehouse: COMPUTE_WH
      schema: DBT_<your_username>
      threads: 4
```

### 3. Install Dependencies & Load Data

```bash
dbt deps            # (if you use packages)
dbt seed            # Load raw CSVs into Snowflake
dbt run             # Run all models
dbt test            # Run data quality tests
dbt docs generate   # Build documentation
dbt docs serve      # Open docs in browser
```

### 4. Build Dashboards in Power BI

1. Open Power BI Desktop
2. Connect to Snowflake (ODBC or native connector)
3. Import transformed models like:
   - `orders_fact`
   - `customer_summary`
   - `dim_products`
4. Build visualizations:
   - Revenue by region/time
   - Top customers/products
   - Supplier performance
   - Profitability trends



##  Features Demonstrated

- Data cleaning & staging (using dbt's `stg_` models)
- Fact/dimension modeling (star schema)
- dbt `ref()` lineage with auto dependency resolution
- Data testing: `not null`, `unique`, `relationships`
- Documentation with descriptions and column metadata
- Snowflake as cloud warehouse
- Power BI dashboard design (with interactivity & UX)

---

## Dashboard 



---

## Future Improvements
- Add orchestration with Airflow or GitHub Actions
- Integrate dbt exposures for Power BI lineage


---

## Author

**Adedayo G. Adeola**  
BI & Data Engineer | SQL • Power BI • dbt • Snowflake  
[LinkedIn](https://www.linkedin.com/in/adedayo-adeola/) | [GitHub](https://github.com/AnalystCam)
