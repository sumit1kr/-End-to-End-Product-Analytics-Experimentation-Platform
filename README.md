🚀 End-to-End Product Analytics & Experimentation Platform

An end-to-end product analytics and experimentation system built to analyze large-scale event data, identify funnel friction, evaluate A/B experiments, and drive data-backed business decisions.

This project simulates how FAANG and product-driven companies analyze user behavior using event-level data, SQL, statistical testing, and interactive dashboards.

📌 Project Overview

Problem Statement

Many users reach the checkout stage but fail to complete purchases.
The goal of this project is to:

Identify where users drop off in the product funnel

Evaluate whether a checkout redesign improves conversion

Validate results using statistical testing

Communicate insights through a professional analytics dashboard

🧠 Key Business Questions

Where is the highest friction in the user funnel?

Does the new checkout experience improve conversion?

Is the observed lift statistically significant?

What is the estimated business impact of rolling out the new design?

🏗️ Architecture Overview
Synthetic Event Data (1.4M+ events)
        ↓
PostgreSQL (Analytics Database)
        ↓
SQL (Funnels, Drop-offs, Aggregations)
        ↓
Python / Jupyter (A/B Statistical Testing)
        ↓
Streamlit Dashboard (Insights & Decisions)


This mirrors real-world analytics workflows used in large product teams.

📊 Dataset Details

The dataset is synthetically generated to mimic real-world e-commerce behavior.

Table	Description	Rows
users	User attributes	10,000
events	Clickstream / event data	1,464,736
experiments	A/B test assignments	10,000
orders	Successful purchases	33,621

Why synthetic data?

Full control over schema and scale

Clean, explainable behavior

Ideal for experimentation and interviews

🧪 Experiment Design

Experiment Name: Checkout Redesign

Metric: Checkout Completion Rate

Test Type: A/B Test

Statistical Test: Chi-Square Test of Independence

Significance Level: 0.05

📈 Key Results
Metric	Control	Variant
Conversion Rate	96.3%	98.7%
Relative Lift	—	+2.54%
p-value	—	< 0.001

Decision:
✅ Roll out the new checkout design to 100% of users.

💰 Estimated Business Impact

Assuming:

Average Order Value ≈ ₹1,000

~33,000 monthly orders

Estimated incremental revenue:
👉 ₹80–90 lakh per month

📊 Dashboard (Streamlit)

The interactive dashboard includes:

Executive Overview – KPIs and product scale

Funnel Analysis – User journey and drop-offs

A/B Experiment Results – Conversion comparison

Business Insights – Impact and recommendations

📸 Screenshots are included in:

dashboard/screenshots/


The dashboard is designed to run locally and connect securely to PostgreSQL.
Deployment is not required for evaluation.

🛠️ Tech Stack

Database: PostgreSQL

Query Language: SQL

Analysis: Python (pandas, scipy, statsmodels)

Dashboard: Streamlit + Plotly

Environment: Jupyter Notebook, VS Code

##📂 Project Structure
product-analytics-project/
│
├── data/
│   └── raw/                        # Generated CSV datasets
│       └── product_analystic.ipynb
|
├── sql/                            # Analytics SQL queries
│   ├── 01_sanity_checks.sql
│   ├── 02_user_funnel.sql
│   ├── 03_conversion_rates.sql
│   ├── 04_dropoff_analysis.sql
│   └── 05_ab_test.sql
│
├── analysis/
│   └── product_analystic.ipynb     # Statistical testing
│
├── dashboard/
│   ├── app.py                      # Streamlit dashboard
│   ├── requirements.txt
│   └── screenshots/
│
├── README.md

▶️ How to Run the Project Locally
1️⃣ Clone the Repository
git clone https://github.com/sumit1kr/-End-to-End-Product-Analytics-Experimentation-Platform.git
cd <repository-name>

2️⃣ Install Dependencies
pip install -r dashboard/requirements.txt

3️⃣ Set Up PostgreSQL

Create a database named: product_analytics

Import CSV files from data/raw/

Ensure PostgreSQL is running locally

4️⃣ Run Streamlit Dashboard
cd dashboard
streamlit run app.py


The app will open at:

http://localhost:8501

🎯 What This Project Demonstrates

✔ End-to-end analytics ownership
✔ Large-scale event data handling
✔ Advanced SQL (funnels, drop-offs, aggregations)
✔ Statistical experiment validation
✔ Business-oriented insights and recommendations
✔ Professional-grade dashboarding

👤 Author

Sumit Kumar

GitHub: https://github.com/sumit1kr


