# 🧩 SQL Subqueries - Type 2 (Multi-Row Subqueries)

A hands-on SQL practice project focused on mastering **Multi-Row Subqueries** using the `job_postings_data` dataset.

---

## 📘 Concept

A **multi-row subquery** returns *more than one row*.  
Because it can output a list of values, you must use special operators:

| Operator | Meaning | Example Usage |
|-----------|----------|----------------|
| `IN` | Compare with any in list | `WHERE city IN (SELECT city …)` |
| `NOT IN` | Exclude all in list | `WHERE dept NOT IN (SELECT …)` |
| `ANY` | True if condition holds for *any* value | `> ANY` → greater than smallest |
| `ALL` | True if condition holds for *all* values | `> ALL` → greater than largest |

---

## 🧾 Queries Included

| No | Query Description | Operator Used |
|----|--------------------|----------------|
| 1 | Jobs in same city as Google jobs | `IN` |
| 2 | Jobs not in Google cities | `NOT IN` |
| 3 | Jobs with salary greater than any Infosys salary | `> ANY` |
| 4 | Jobs with salary greater than all Infosys salaries | `> ALL` |
| 5 | Jobs whose category matches Amazon jobs | `IN` |
| 6 | Jobs with salary less than any AI salary | `< ANY` |
| 7 | Jobs with salary less than all AI salaries | `< ALL` |
| 8 | Jobs sharing city and category with Oracle jobs | `IN (multi-column)` |

---

## 🧠 Interview Focus Questions

1. What is a multi-row subquery?  
2. Why can’t we use `=` with multi-row subqueries?  
3. Difference between `IN`, `ANY`, and `ALL`.  
4. What happens if subquery returns NULL values?  
5. How is `> ANY` similar to `> MIN()`?  
6. How is `> ALL` similar to `> MAX()`?  
7. Difference between `IN` and `EXISTS`.  
8. Can we return multiple columns? (Yes, with tuple IN comparison.)

---

## 🧰 How to Run

1. Create table `job_postings_data`.  
2. Insert dummy rows (≈ 100).  
3. Copy-paste queries from `02_multi_row_subqueries.sql`.  
4. Observe how inner query returns multiple rows and outer query uses list comparison.

---

## 🧑‍💻 Author

**Tirupathi Rao**  
🎯 SQL Learner | Data Analyst Aspirant  
🚀 Building step-by-step SQL subquery projects

---

## ⭐ Next Modules

- `SQL-Subqueries-Type1` → Single-Row Subqueries  
- `SQL-Subqueries-Type3` → Correlated Subqueries  
- `SQL-Subqueries-Type4` → Subqueries in SELECT and FROM  
