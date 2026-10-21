# 📊 Job Market Intelligence 2026

### An End-to-End Data Analytics Portfolio Project

**Objective:** Analyze Data Analyst job postings to identify in-demand technical skills, hiring locations, experience requirements, and salary patterns.

## 🔍 Project Overview

The job market is constantly evolving, and aspiring Data Analysts need to understand which technical skills and qualifications employers request.

This project uses job-posting data to explore hiring requirements and transform raw data into actionable insights. It demonstrates the complete data analytics workflow, from data cleaning to visualization and business recommendations.

## 🎯 Business Questions

- Which technical skills appear most frequently in Data Analyst job postings?
- How often do employers request Excel, SQL, Python, and Power BI?
- Which cities have the highest number of postings in the selected dataset?
- What experience levels do employers request?
- How much salary information is disclosed in job postings?
- What learning priorities can aspiring Data Analysts consider based on the findings?

## 🛠️ Tools and Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel | Initial data exploration, filtering, and PivotTables |
| Python | Data cleaning, analysis, and visualization |
| Pandas | Data manipulation and aggregation |
| Matplotlib | Charts and visualizations |
| SQL | Structured querying and business analysis |
| Power BI | Interactive dashboard and reporting |
| GitHub | Version control and project documentation |

## 📁 Project Structure

```text
job-market-intelligence-2026/
│
├── data/
│   ├── README.md
│   └── job_postings.csv
│
├── python/
│   └── analyze_jobs.py
│
├── sql/
│   └── analysis_queries.sql
│
├── dashboard/
│   └── power_bi_build_guide.md
│
├── outputs/
│   └── charts/
│
├── requirements.txt
└── README.md
```

## 🔄 Project Workflow

1. **Data collection:** Obtain job-posting data from a documented source.
2. **Data exploration:** Inspect columns, data types, missing values, and duplicates.
3. **Data cleaning:** Standardize text fields, handle missing values, and validate salary information.
4. **Exploratory data analysis:** Analyze skills, locations, experience requirements, and salaries.
5. **SQL analysis:** Use filtering, aggregation, grouping, and sorting to answer business questions.
6. **Data visualization:** Create charts to communicate important patterns.
7. **Dashboard development:** Build a Power BI report with key metrics and filters.
8. **Business recommendations:** Translate observed patterns into practical learning priorities.

## 📈 Key Performance Indicators

The analysis will calculate:

- Total job postings analyzed
- Number and percentage of postings mentioning each skill
- Posting counts by location
- Distribution of experience requirements
- Percentage of postings with usable salary information
- Salary statistics for comparable records with disclosed salaries

## 💡 Expected Deliverables

- Cleaned job-posting dataset
- Python analysis script
- SQL query collection
- Skill-demand and location visualizations
- Power BI dashboard
- Documented findings and business recommendations

## 📊 Initial Analysis: Data Analyst Skills

The selected dataset contains 23,201 job listings across six technology job categories, including 4,729 listings categorized as Data Analyst roles.

The initial skills analysis identified the following frequently occurring skill labels in Data Analyst job postings:

| Skill | Job Listings | Share of Data Analyst Listings |
|---|---:|---:|
| Data Analysis | 2,546 | 53.84% |
| Power BI | 474 | 10.02% |
| SQL | 473 | 10.00% |
| Python | 429 | 9.07% |
| Excel | 318 | 6.72% |

These figures represent mentions in the selected dataset, not the entire job market. Skill labels have not yet been consolidated into broader skill categories.

### 📈 Skills Visualization

![Top 15 Skills in Data Analyst Job Listings](outputs/charts/top_15_data_analyst_skills.png)

### 💡 Initial Observations

- Data Analysis is the most frequently occurring skill label in this dataset.
- Power BI and SQL have similar mention counts.
- Python and Excel also appear among the frequently mentioned skills.
- Further analysis is needed to validate the data and investigate locations, experience requirements, and salary patterns.

### 🛠️ Tools Used

- Python
- Pandas
- Matplotlib
- GitHub

### 🔜 Next Steps

- Analyze job postings by city.
- Validate experience requirements and salary fields.
- Compare work modes, including on-site, hybrid, and remote.
- Develop SQL queries and a Power BI dashboard.

## 📚 Dataset and Data Quality

The dataset source, collection date, geographic coverage, date range, and applicable license will be documented here.

The analysis will distinguish between missing information and genuine zero values. Salary figures will be compared only after checking their units and consistency.

**Data integrity:** No job-market statistics or findings will be claimed until they have been calculated from the selected dataset.

## ⚠️ Limitations

- Job postings may contain duplicate or reposted vacancies.
- A skill mentioned in a description does not necessarily indicate its importance to the employer.
- Salary information may be missing or inconsistent.
- One platform's postings may not represent the entire job market.
- Historical data cannot automatically represent current hiring trends.

## 🚀 Future Improvements

- Add a Power BI dashboard with interactive filters.
- Compare job-market patterns across supported time periods.
- Improve skill extraction using natural language processing.
- Add automated data-quality checks.
- Refresh the analysis when new, comparable data becomes available.

## 👩‍💻 Author

**Majji Venkata Rajeev Hari Priya**

Aspiring Data Analyst | Excel | Python | SQL | Power BI

**Portfolio objective:** Demonstrate practical data analysis, problem-solving, visualization, and evidence-based decision-making skills.
