
-- Job Market Intelligence 2026
-- SQL Analysis: Data Analyst Job Listings

-- 1. Total number of job listings
SELECT COUNT(*) AS total_job_listings
FROM job_postings;

-- 2. Number of Data Analyst job listings
SELECT COUNT(*) AS data_analyst_jobs
FROM job_postings
WHERE role_category = 'Data Analyst';

-- 3. Top 10 hiring locations for Data Analyst jobs
SELECT
    primary_city,
    COUNT(*) AS job_listings
FROM job_postings
WHERE role_category = 'Data Analyst'
GROUP BY primary_city
ORDER BY job_listings DESC
LIMIT 10;

-- 4. Most frequently requested skills
SELECT
    skills_required,
    COUNT(*) AS job_listings
FROM job_postings
WHERE role_category = 'Data Analyst'
GROUP BY skills_required
ORDER BY job_listings DESC
LIMIT 10;

-- 5. Salary disclosure overview
SELECT
    salary_disclosed,
    COUNT(*) AS job_listings
FROM job_postings
WHERE role_category = 'Data Analyst'
GROUP BY salary_disclosed;

-- 6. Average salary range for disclosed salaries
SELECT
    ROUND(AVG(salary_min_lpa), 2) AS average_min_salary_lpa,
    ROUND(AVG(salary_max_lpa), 2) AS average_max_salary_lpa
FROM job_postings
WHERE role_category = 'Data Analyst'
  AND salary_disclosed = TRUE
  AND salary_min_lpa > 0
  AND salary_max_lpa >= salary_min_lpa;
