# 🧩 SQL Subqueries - Type 1 (Single-Row Subqueries)

This project contains **practice queries** for mastering SQL **Single-Row Subqueries**, using the dataset `job_postings_fact`.

---

## 📘 What is a Single-Row Subquery?

A **Single-Row Subquery** is a query that returns **only one value** (one row × one column).  
These are used with **comparison operators** such as:

`=`, `>`, `<`, `>=`, `<=`, `<>`

They are called *single-row* because the subquery gives exactly **one value** — like an average, maximum, or minimum — which the outer query compares against.

---

## 📊 Table Used — `job_postings_fact`

| Column Name | Description |
|--------------|--------------|
| job_id | Unique job identifier |
| job_title | Title of the job posting |
| company_name | Company offering the job |
| job_location | Job location |
| job_posted_date | Date when job was posted |
| salary_year_avg | Average annual salary |
| experience_level | Entry, Mid, Senior |
| employment_type | Full-time or Contract |
| job_category | Job type (Data, AI, Cloud, etc.) |

---

## 🧩 Queries Included

| No | Query Description | Concept Used |
|----|--------------------|---------------|
| 1 | Jobs with salary greater than average salary | Comparison with `AVG()` |
| 2 | Job(s) with highest salary | Comparison with `MAX()` |
| 3 | Job(s) with lowest salary | Comparison with `MIN()` |
| 4 | Jobs with salary greater than Google’s average | Conditional subquery |
| 5 | Jobs paying more than Python Developer’s salary | Single-row subquery with condition |
| 6 | Jobs posted after latest Data Analyst job | Date comparison with `MAX()` |
| 7 | Jobs with salary between global min and max | Dual single-row subqueries (`MIN()` + `MAX()`) |

---

## ⚙️ How to Run

1. Create the table `job_postings_fact` in your SQL environment.
2. Insert around 100 sample rows for testing (you can generate dummy data in Excel or ChatGPT).
3. Copy-paste queries from `01_single_row_subqueries.sql`.
4. Observe how each subquery executes first, then filters the outer query.

---

## 🧠 Concepts Covered

- Aggregate functions inside subqueries (`AVG`, `MAX`, `MIN`)
- Comparison operators (`=`, `>`, `BETWEEN`)
- Subqueries in `WHERE` clause
- Using subqueries to filter by specific companies or job titles
- Single-row vs. multi-row subqueries
- Use of `LIMIT 1` for avoiding multiple-row errors

---

## 🧑‍💻 Author

**Tirupathi Rao**  
SQL & Data Analyst Aspirant  
🚀 Learning SQL step by step, from fundamentals to advanced interview-level topics.

---

## 🧰 Next Steps

➡️ **Next Module:** `SQL-Subqueries-Type2` — Multi-Row Subqueries (`IN`, `ANY`, `ALL`)  
➡️ **Then:** `SQL-Subqueries-Type3` — Correlated Subqueries (`EXISTS`, `NOT EXISTS`)

---

⭐ **GitHub Tip:**  
Add a short description in your repo:  
> “Hands-on SQL practice project on Single-Row Subqueries — including aggregate comparison, conditional filters, and interview-style queries.”

