
import pandas as pd
import matplotlib.pyplot as plt
from pathlib import Path

# Project output directory
OUTPUT_DIR = Path("outputs")
CHART_DIR = OUTPUT_DIR / "charts"
CHART_DIR.mkdir(parents=True, exist_ok=True)

# Load the dataset
# Keep the CSV locally; do not publish raw job listings without permission.
DATA_PATH = Path("data/indian_tech_jobs_2026.csv")
df = pd.read_csv(DATA_PATH)

print("Dataset shape:", df.shape)

# Filter Data Analyst job listings
da_jobs = df[
    df["role_category"].str.strip().str.lower() == "data analyst"
].copy()

print("Data Analyst job listings:", len(da_jobs))

# Prepare skills data
skills_data = da_jobs[["job_id", "skills_required"]].dropna().copy()
skills_data["skill"] = skills_data["skills_required"].str.split(",")
skills_data = skills_data.explode("skill")

skills_data["skill"] = (
    skills_data["skill"].str.strip().str.lower()
)

skills_data = skills_data[
    skills_data["skill"].ne("")
    & skills_data["skill"].ne("not available")
]

# Count each skill once per job listing
skills_data = skills_data.drop_duplicates(["job_id", "skill"])

skill_summary = (
    skills_data.groupby("skill")["job_id"]
    .nunique()
    .sort_values(ascending=False)
    .reset_index(name="job_count")
)

skill_summary["percentage_of_data_analyst_jobs"] = (
    skill_summary["job_count"] / len(da_jobs) * 100
).round(2)

# Save the summary
skill_summary.to_csv(
    OUTPUT_DIR / "data_analyst_skill_summary.csv",
    index=False
)

# Create and save a chart
top_skills = skill_summary.head(15).sort_values("job_count")

plt.figure(figsize=(10, 7))
plt.barh(top_skills["skill"], top_skills["job_count"])
plt.xlabel("Number of job listings")
plt.ylabel("Skill")
plt.title("Top 15 Skills in Data Analyst Job Listings")
plt.tight_layout()
plt.savefig(
    CHART_DIR / "top_15_data_analyst_skills.png",
    dpi=300,
    bbox_inches="tight"
)
plt.show()

print("Analysis completed.")
