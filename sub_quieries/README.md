# 🧩 SQL Subqueries – Complete Learning Series  
**Type 1 • Type 2 • Type 3**

A full SQL-practice series covering every kind of subquery:  
✅ Type 1 – Single-Row ✅ Type 2 – Multi-Row ✅ Type 3 – Correlated  
Each section includes explanations, syntax, and interview-style examples built around the dataset **`job_postings_data`**.

---

## 📊 Dataset Overview – `job_postings_data`

| Column | Type | Description |
|---------|------|-------------|
| job_id | INT | Unique job identifier |
| job_title | VARCHAR | Title of the job posting |
| company_name | VARCHAR | Company offering the job |
| job_location | VARCHAR | City / Region |
| job_posted_date | DATE | Posting date |
| salary_year_avg | DECIMAL | Annual salary |
| experience_level | VARCHAR | Entry / Mid / Senior |
| employment_type | VARCHAR | Full-time / Contract |
| job_category | VARCHAR | Data / AI / Cloud etc. |

---

# 🧩 TYPE 1 – Single-Row Subqueries
A **single-row subquery** returns exactly one value (1 row × 1 column).  
Used with comparison operators such as `=`, `<`, `>`, `<=`, `>=`, `<>`.

### 🔹 Examples
| No | Query | Concept |
|----|--------|----------|
| 1 | Jobs with salary > overall average | `AVG()` |
| 2 | Highest-salary job(s) | `MAX()` |
| 3 | Lowest-salary job(s) | `MIN()` |
| 4 | Jobs > Google’s average salary | Filter by company |
| 5 | Jobs > Python Developer salary | Compare single value |
| 6 | Posted after latest Data Analyst job | `MAX()` date |
| 7 | Salary between min and max | `BETWEEN` |

**Key Notes **
- Subquery runs once and returns one value.  
- Used for comparisons against aggregates.  
- Causes an error if it returns multiple rows.

---

# 🧩 TYPE 2 – Multi-Row Subqueries
A **multi-row subquery** returns **more than one row**.  
Used when comparing to a **list of values**.

### 🔹 Operators
| Operator | Meaning |
|-----------|----------|
| `IN` | Match any value in list |
| `NOT IN` | Exclude listed values |
| `ANY` | True if condition holds for any value |
| `ALL` | True if condition holds for all values |

### 🔹 Examples
| No | Query | Operator |
|----|--------|-----------|
| 1 | Jobs in same city as Google jobs | `IN` |
| 2 | Jobs not in Google cities | `NOT IN` |
| 3 | Salary > any Infosys salary | `> ANY` |
| 4 | Salary > all Infosys salaries | `> ALL` |
| 5 | Category matches Amazon jobs | `IN` |
| 6 | Salary < any AI salary | `< ANY` |
| 7 | Salary < all AI salaries | `< ALL` |
| 8 | Same (city, category) as Oracle jobs | Multi-column `IN` |

**Key Notes **
- Subquery returns multiple rows.  
- `IN` / `ANY` / `ALL` used for list comparisons.  
- Useful for filtering by values from another group.

---

# 🧩 TYPE 3 – Correlated Subqueries
A **correlated subquery** depends on the outer query and runs **once per row**.  
It references columns from the outer query (e.g., `j1.company_name = j2.company_name`).

### 🔹 Examples
| No | Query | Concept |
|----|--------|----------|
| 1 | Salary > average in same category | Category correlation |
| 2 | Latest job per company | `MAX()` date per company |
| 3 | Salary > company’s average | Company correlation |
| 4 | Companies with AI jobs | `EXISTS` |
| 5 | Companies without AI jobs | `NOT EXISTS` |
| 6 | Second-highest salary per company | Correlated count |
| 7 | Salary > average in same month | Date correlation |
| 8 | Top-paid job in each location | `MAX()` correlation |

**Key Notes **
- Inner query uses outer query values.  
- Runs for each outer row.  
- Common with `EXISTS` / `NOT EXISTS`.  
- Great for per-group comparisons.

---

## 🧠 Interview Focus Questions

| Topic | Sample Questions |
|-------|------------------|
| Basics | What is a subquery? Why use it? |
| Type 1 | Why must it return one row? |
| Type 2 | Difference between `IN`, `ANY`, `ALL`? |
| Type 3 | How does a correlated subquery work? |
| EXISTS vs IN | When is `EXISTS` faster? |
| Performance | When should you replace with JOIN? |
| Advanced | How to find second highest salary? |

---


---

## 🧑‍💻 Author
**Tirupathi Rao**  
🎯 SQL Learner | Data Analyst Aspirant  
🚀 Building step-by-step SQL projects and interview prep material.
---

⭐ **GitHub Description Suggestion:**  
> “Complete SQL Subqueries Practice Series — Single-Row, Multi-Row and Correlated Subqueries with explanations, queries, and interview questions.”

