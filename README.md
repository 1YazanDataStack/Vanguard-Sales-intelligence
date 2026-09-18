# Vanguard-Sales-intelligence

Building an impactful dashboard starts long before the design phase—it begins with proper *Data Modeling* and *Data Architecture*.

For this project, a full Data Warehouse approach was adopted. The Data Model was engineered using a *Star Schema* architecture (Fact & Dimension tables), pushing all business logic, transformations, and aggregations directly to the database engine using SQL. *Power BI* was leveraged strictly as a visualization layer.

---

## 🛠️ Tech Stack
* *Database Engine:* Microsoft SQL Server
* *Data Modeling:* Star Schema (Fact & Dimension Tables)
* *Logic & Transformation:* T-SQL Views, Stored Procedures, Indexing
* *BI & Visualization:* Power BI (Dark Theme UI Design)

---

## 🔑 Architecture & Technical Highlights

* *Data Modeling (Star Schema):* Designed Fact and Dimension tables in SQL to build an optimized, highly scalable structure for fast querying.
* *SQL Logic & Processing:* Engineered custom SQL Views and Stored Procedures to handle complex transformations and feed Power BI with clean, aggregated data without relying on heavy DAX calculations.
* *Executive Dashboard:* Built a high-contrast dark theme UI designed for quick decision-making, tracking *$2M in total revenue* and *38K units sold*.
* *Granular Analytics:* Visualized category performance, profit distribution, and product sub-category funnels to immediately highlight revenue drivers and volume trends.

> *Key Takeaway:* Shifting data modeling and transformation logic to the SQL level ensures maximum report performance, speed, and long-term scalability.

---

## 📂 Repository Structure

```text
├── CreateIndex.sql
├── DataQA.sql
├── ETL_DimCUSTOMER.sql
├── ETL_DimOrders.sql
├── ETL_DimProducts.sql
├── ETL_DimDate.sql
├── ETL_FACTSALES.sql
├── KYS.sql
├── NTRCustomers.sql
├── RemoveDubl.sql
├── Vanguard Sales intelligence.pbix
└── Vanguard Sales intelligence.pdf
