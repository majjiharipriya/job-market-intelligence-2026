
-- Job Market Intelligence 2026
-- SQL Analysis: Data Analyst Job Listings
-- SQL queries tested in Google Colab using DuckDB

-- 1. Total number of job listings
SELECT COUNT(*) AS total_job_listings
FROM job_postings;

-- 2. Number of Data Analyst job listings
SELECT COUNT(*) AS data_analyst_jobs
FROM job_postings
WHERE role_category = 'Data Analyst';

-- 3. Top 10 hiring locations
SELECT primary_city, COUNT(*) AS job_listings
FROM job_postings
WHERE role_category = 'Data Analyst'
GROUP BY primary_city
ORDER BY job_listings DESC
LIMIT 10;

-- 4. Salary disclosure overview
SELECT
    salary_disclosed,
    COUNT(*) AS job_listings,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (),
        2
    ) AS percentage
FROM job_postings
WHERE role_category = 'Data Analyst'
GROUP BY salary_disclosed
ORDER BY salary_disclosed DESC;

-- 5. Salary summary for valid disclosed salaries
SELECT
    COUNT(*) AS valid_salary_records,
    ROUND(AVG(salary_min_lpa), 2) AS average_min_salary_lpa,
    ROUND(AVG(salary_max_lpa), 2) AS average_max_salary_lpa,
    ROUND(MEDIAN(salary_midpoint_lpa), 2) AS median_salary_midpoint_lpa,
    MIN(salary_min_lpa) AS lowest_listed_min_salary_lpa,
    MAX(salary_max_lpa) AS highest_listed_max_salary_lpa
FROM job_postings
WHERE role_category = 'Data Analyst'
  AND salary_disclosed = TRUE
  AND salary_min_lpa > 0
  AND salary_max_lpa >= salary_min_lpa;

-- 6. Data Analyst jobs by work mode
SELECT
    work_mode,
    COUNT(*) AS job_listings,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (),
        2
    ) AS percentage
FROM job_postings
WHERE role_category = 'Data Analyst'
GROUP BY work_mode
ORDER BY job_listings DESC;

-- 7. Data Analyst jobs by experience level
SELECT
    experience_tier,
    COUNT(*) AS job_listings,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (),
        2
    ) AS percentage
FROM job_postings
WHERE role_category = 'Data Analyst'
GROUP BY experience_tier
ORDER BY job_listings DESC;

-- 8. Top 10 Data Analyst job titles
SELECT job_title, COUNT(*) AS job_listings
FROM job_postings
WHERE role_category = 'Data Analyst'
GROUP BY job_title
ORDER BY job_listings DESC
LIMIT 10;
