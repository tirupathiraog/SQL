-- ===========================================================
-- SQL Subqueries - Type 2 (Multi-Row Subqueries)
-- Author: Tirupathi Rao
-- Description: Practice queries using IN, ANY, ALL operators
-- ===========================================================

-- 1️⃣  Jobs in same city as Google jobs  →  IN
SELECT *
FROM job_postings_data
WHERE job_location IN (
    SELECT job_location
    FROM job_postings_data
    WHERE company_name = 'Google'
);

-- 2️⃣  Jobs not in Google cities  →  NOT IN
SELECT *
FROM job_postings_data
WHERE job_location NOT IN (
    SELECT job_location
    FROM job_postings_data
    WHERE company_name = 'Google'
);

-- 3️⃣  Jobs whose salary > ANY Infosys salaries
SELECT *
FROM job_postings_data
WHERE salary_year_avg > ANY (
    SELECT salary_year_avg
    FROM job_postings_data
    WHERE company_name = 'Infosys'
);

-- 4️⃣  Jobs whose salary > ALL Infosys salaries
SELECT *
FROM job_postings_data
WHERE salary_year_avg > ALL (
    SELECT salary_year_avg
    FROM job_postings_data
    WHERE company_name = 'Infosys'
);

-- 5️⃣  Jobs whose category matches any Amazon job
SELECT *
FROM job_postings_data
WHERE job_category IN (
    SELECT DISTINCT job_category
    FROM job_postings_data
    WHERE company_name = 'Amazon'
);

-- 6️⃣  Jobs whose salary < ANY AI job salary
SELECT *
FROM job_postings_data
WHERE salary_year_avg < ANY (
    SELECT salary_year_avg
    FROM job_postings_data
    WHERE job_category = 'AI'
);

-- 7️⃣  Jobs whose salary < ALL AI job salaries
SELECT *
FROM job_postings_data
WHERE salary_year_avg < ALL (
    SELECT salary_year_avg
    FROM job_postings_data
    WHERE job_category = 'AI'
);

-- 8️⃣  Jobs located in same city + category as Oracle jobs
SELECT *
FROM job_postings_data
WHERE (job_location, job_category) IN (
    SELECT job_location, job_category
    FROM job_postings_data
    WHERE company_name = 'Oracle'
);

-- ===========================================================
-- END OF FILE
-- ===========================================================
