# 🧠 Marketing Analytics SQL Project

This project simulates a real-world digital marketing agency database to showcase SQL skills in a business context. It was created to practice designing a schema, loading data, and answering strategic questions that companies actually care about.

---

## ✅ Why This Project?

In the real world, businesses rely on analysts to make sense of fragmented data. This project models that reality — multiple departments (clients, ads, invoices, platforms, etc.) all tracked across a clean SQL database.

It answers **high-value business questions** using raw SQL — without relying on Python, Colab, or BI tools — to show what’s possible using **only SQLite**.

---

## 📁 What You’ll Find Inside

| Folder | Description |
|--------|-------------|
| `/data/` | CSV files used to populate the database (e.g., clients, ads, invoices) |
| `/sql/` | SQL scripts for setting up the schema and running analysis |
| `/results/` | CSV exports of the queries — already answered and ready to explore |

---

## 🔍 Questions Answered

This project tackles realistic questions a company might ask, like:

1. **Which clients bring in the most revenue (excluding cancelled invoices)?**
2. **How many ads were created per platform?**
3. **Which platforms were actively used in the last 12 months?**
4. **Which clients had the most ads, and on which platforms?**

👉 All queries are saved in: [`/sql/marketing_analytics_queries.sql`](./sql/marketing_analytics_queries.sql)  
👉 The results are exported here: [`/results/`](./results)

---

## 🛠️ How to Use and Replicate

1. **Download DB Browser for SQLite**  
   [https://sqlitebrowser.org/](https://sqlitebrowser.org/)

2. **Open or create a SQLite database** (e.g., `marketing_agency.db`)

3. **Execute the schema**  
   Use the file in `/sql/dig_marketing_schema.sql` to build the tables

4. **Import the data**  
   Go to `File → Import → Table from CSV` in DB Browser and load the files from `/data/`

5. **Run analysis**  
   Use the queries in `/sql/marketing_analytics_queries.sql` to reproduce the insights  
   → You can also export your own `.csv` files like those in `/results/`

---

## 🧠 How to Approach Queries (for Beginners)

If you're new to SQL or data projects, here’s a simplified approach:

### 🔹 Step 1: Start from What You're Measuring
Ask yourself: *What am I trying to count, total, or analyze?*  
> → Start your `FROM` clause with that table (e.g., `ads_table` if you're counting ads)

### 🔹 Step 2: Join for Context
If you need names, dates, categories, or other details, `JOIN` to the related tables.  
> e.g., `ads_table` → `campaigns_table` → `clients_table`

### 🔹 Step 3: Group and Aggregate
Use `GROUP BY` to segment your totals by category (client, platform, month, etc.)  
> And use `SUM()`, `COUNT()`, or `ROUND()` to summarize the data

### 🔹 Step 4: Sort and Filter
Add `WHERE` clauses to narrow your data (e.g., `WHERE status != 'cancelled'`)  
Use `ORDER BY` to find the top performers

---

## 💡 Key Learnings

- How to build and normalize a relational schema
- How to use foreign keys and JOINs to navigate across tables
- How to extract business insights using pure SQL
- How to simulate data analyst work in a realistic company setup

---

## 📬 Contact

This project is part of my personal SQL bootcamp and portfolio.  
If you’re interested in collaborating or just geeking out over data:

📫 [LinkedIn](https://www.linkedin.com/in/Corvo)  
