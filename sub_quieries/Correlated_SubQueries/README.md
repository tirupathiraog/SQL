# 🧩 SQL Subqueries - Type 3 (Correlated Subqueries)

This module contains practical correlated-subquery examples you can run against a `job_postings_data` dataset.
Correlated subqueries reference the outer query and run once per outer row. They are ideal for row-by-row comparisons
(e.g., "above the category average", "latest per company", "exists / not exists" checks).

---

## ✅ Files

- `03_correlated_subqueries.sql` — 8 correlated subquery examples with comments.
- This README — explanation and usage notes.

---

## 🔍 Concepts Covered

- Correlated subquery basics (inner query references outer row)
- `EXISTS` / `NOT EXISTS` patterns
- Per-group comparisons using correlated aggregates (`AVG`, `MAX`)
- Advanced pattern: nth-highest (second-highest) using correlated counting
- Date-based correlation (compare within same month/year)
- Handling ties with `COUNT(DISTINCT ...)`

---

## 📋 Queries (short descriptions)

1. Jobs paying more than the average in their **job_category**.  
2. Latest job posted for each **company**.  
3. Jobs paying above their **company's** average salary.  
4. Companies that have at least one **AI** job (`EXISTS`).  
5. Companies that do **not** have any **AI** job (`NOT EXISTS`).  
6. Each company's **second-highest** salary job (correlated counting technique).  
7. Jobs that pay above the average for jobs posted in the **same month**.  
8. Jobs that are the **top-paid** in their **location**.

---

## ⚙️ How to Use

1. Create the `job_postings_data` table and load sample data (recommended ~100 rows).  
2. Open `03_correlated_subqueries.sql` and run each query one by one.  
3. For MySQL users: replace `EXTRACT(YEAR FROM ...)` with `YEAR(...)`, and `EXTRACT(MONTH FROM ...)` with `MONTH(...)`.

---

## 🧠 Interview Tips

- Explain why the subquery is **correlated**: it references an outer alias (e.g., `j1.company_name`) inside the inner query.
- Be prepared to rewrite correlated logic with `JOIN` or window functions when performance is important.
- `EXISTS` is often more efficient when you're checking for existence rather than returning values.
- For "nth highest" problems, correlated counting is a common technique, but window functions (`ROW_NUMBER()`, `DENSE_RANK()`) are more efficient where supported.

---

## 🧰 Next Module Ideas

- `SQL-Subqueries-Type4` — scalar subqueries in `SELECT`, and subqueries in `FROM` (derived tables).
- `SQL-Window-Functions` — use `ROW_NUMBER()`, `RANK()`, and `PARTITION BY` to replace correlated patterns with faster alternatives.

---

## 🧑‍💻 Author

**Tirupathi Rao** — SQL learner & data analyst aspirant.
