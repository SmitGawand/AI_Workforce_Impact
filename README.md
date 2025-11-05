
---

# 📘 **AI Impact Analysis: Measuring GenAI Adoption & Workforce Transformation**

### 🧑‍💼 **Domain:** Data Analytics | Business Intelligence | Generative AI Adoption

### 🛠️ **Tools Used:** Python, MS SQL Server, Power BI, Excel

### 📂 **Dataset:** Enterprise_GenAI_Adoption_Impact.csv (Custom / Kaggle Inspired)

---

## 📖 **Project Overview**

This project analyzes **how Generative AI (GenAI)** adoption is transforming industries through:

* Workforce productivity,
* New roles creation,
* Employee upskilling,
* Training efficiency.

It combines **Python for data cleaning**, **SQL for analytical querying**, and **Power BI for visualization** to build a complete **data-driven story** of AI’s real-world impact.

---

## 🎯 **Objective**

To quantify and visualize how the adoption of Generative AI impacts:

1. **Employee productivity growth**
2. **Number of new AI-related roles created**
3. **Training hours & efficiency**
4. **Overall workforce transformation across industries and regions**

---

## 🧩 **Dataset Description**

| Column Name           | Description                                   |
| --------------------- | --------------------------------------------- |
| `Country`             | Country of the enterprise                     |
| `Industry`            | Sector where GenAI is implemented             |
| `GenAI_Tool`          | AI tool used (ChatGPT, Copilot, Gemini, etc.) |
| `Adoption_Year`       | Year AI was adopted                           |
| `Employees_Impacted`  | Number of employees influenced by GenAI       |
| `Roles_Created`       | New AI-related positions created              |
| `Training_Hours`      | Hours spent on employee upskilling            |
| `Productivity_Score`  | Productivity change percentage post-AI        |
| `Training_Efficiency` | Ratio of productivity gain per training hour  |

---

## ⚙️ **Workflow**

### 🐍 **Step 1 — Data Cleaning & Analysis (Python)**

**Tools/Libraries:** `pandas`, `numpy`, `matplotlib`, `seaborn`

**Tasks:**

* Imported and explored dataset
* Handled missing values & outliers
* Standardized columns (numeric normalization)
* Created new calculated fields:

  ```python
  df['Training_Efficiency'] = df['Productivity_Score'] / df['Training_Hours']
  ```
* Exported cleaned CSV → `AI_Adoption_Cleaned.csv`

**Key Insights (Python EDA):**

* Avg productivity increase: **~18.5%**
* Highest productivity observed in **Tech** and **Healthcare**
* **2023–2024** showed major adoption spikes

---

### 🧠 **Step 2 — Analytical Querying (SQL)**

**Database:** MS SQL Server  
**Table:** `AI_Adoption_Cleaned`

**Queries Performed:**

```sql
-- 1️⃣ Total Employees and Roles Impacted
SELECT 
    SUM(Employees_Impacted) AS TotalEmployees,
    SUM(Roles_Created) AS TotalRoles
FROM AI_Adoption_Cleaned;

-- 2️⃣ Average Productivity by Industry
SELECT 
    Industry,
    ROUND(AVG(Productivity_Score), 2) AS AvgProductivity
FROM AI_Adoption_Cleaned
GROUP BY Industry
ORDER BY AvgProductivity DESC;

-- 3️⃣ Year-over-Year Productivity Trend
SELECT 
    Adoption_Year,
    ROUND(AVG(Productivity_Score), 2) AS AvgProductivity
FROM AI_Adoption_Cleaned
GROUP BY Adoption_Year
ORDER BY Adoption_Year;

-- 4️⃣ Training Efficiency by Country
SELECT 
    Country,
    ROUND(AVG(Training_Efficiency) * 100, 2) AS TrainingEfficiencyPct
FROM AI_Adoption_Cleaned
GROUP BY Country;
```

✅ **Findings:**

* AI training efficiency highest in **Singapore** and **USA**
* Steady improvement trend from 2022 → 2024
* Manufacturing shows slower gains but broader reach

---

### 📊 **Step 3 — Dashboard & Visualization (Power BI)**

**Dashboard Title:** 🧭 *“AI Impact Dashboard”*

#### **KPIs (Cards)**

| Metric                       | Formula                       | Description                       |
| ---------------------------- | ----------------------------- | --------------------------------- |
| **Total Employees Impacted** | `SUM(Employees_Impacted)`     | Total workforce affected by GenAI |
| **Total Roles Created**      | `SUM(Roles_Created)`          | New AI-related positions          |
| **Avg Training Hours**       | `AVERAGE(Training_Hours)`     | Mean time spent on training       |
| **Avg Productivity (%)**     | `AVERAGE(Productivity_Score)` | Average productivity improvement  |

---

#### **Main Visuals**

| Visual               | Fields                                                                              | Purpose                                       |
| -------------------- | ----------------------------------------------------------------------------------- | --------------------------------------------- |
| **Line Chart**       | X = Adoption Year, Y = Avg Productivity                                             | Productivity trend over time                  |
| **Bar Chart**        | X = Industry, Y = Avg Productivity                                                  | Industry-level performance                    |
| **Map Visual**       | Location = Country, Value = Productivity                                            | Regional productivity distribution            |
| **Gauge**            | Value = Training Efficiency, Min = 0%, Max = 0.5%, Target = 0.25%                   | Training efficiency indicator                 |
| **Matrix (Heatmap)** | Rows = Industry, Columns = GenAI Tool, Values = Avg Productivity                    | Tool impact analysis                          |
| **Bubble Chart**     | X = Training Hours, Y = Productivity Change, Size = Roles Created, Color = Industry | Correlation between training and productivity |
| **Table**            | Industry, Avg Productivity, Roles Created, Employees Impacted                       | Summary table view                            |

---

### 🪄 **Dashboard Features**

* 🎛️ Dynamic filters: `Adoption Year`, `Industry`
* 🗺️ Interactive global map view
* 📈 KPI cards with bold numeric summaries
* 💡 Conditional formatting to highlight top performers
* 🎨 Color palette: **Black**, **Gold**, **White** (futuristic & professional theme)

---

## 📈 **Key Insights**

1. 💼 AI has impacted **1B+ employees** and created **2M+ new roles** across industries.
2. 🏭 **Tech and Healthcare** sectors show the highest productivity uplift (~19%).
3. ⏱️ Average training investment per employee is **12.7K hours**, leading to measurable productivity growth.
4. 🌍 Countries like **Germany, USA, and UAE** are leading in efficiency gains.
5. ⚡ Optimal **Training Efficiency** found between **0.20%–0.30%** range.

---

## 🧰 **Tech Stack**

| Tool                         | Purpose                               |
| ---------------------------- | ------------------------------------- |
| **Python (Pandas, Seaborn)** | Data cleaning, wrangling, and EDA     |
| **MS SQL Server**            | Querying and analytical operations    |
| **Power BI**                 | Dashboard creation and storytelling   |
| **Excel**                    | Initial data review and sanity checks |

---

## 🏁 **Outcome**

A fully integrated, cross-platform project that demonstrates:

* **Data preparation & wrangling (Python)**
* **Analytical SQL proficiency**
* **Visual storytelling (Power BI)**
* **End-to-end analytical thinking**


---

## 📎 **Files Included**

| File                                   | Description                       |
| -------------------------------------- | --------------------------------- |
| `Enterprise_GenAI_Adoption_Impact.csv` | Original dataset                  |
| `AI Impact.ipynb`                      | Python cleaning script            |
| `AI_Adoption_Cleaned.csv`              | Cleaned dataset                   |
| `adoptionqueries.sql`                  | SQL analysis queries              |
| `AI Impact Dashboard.pbix`             | Power BI dashboard                |
| `README.md`                            | Project documentation (this file) |

---

## 🏅 **Skills Showcased**

✅ Data Cleaning & EDA
✅ SQL Analytics
✅ Power BI Storytelling
✅ Business Insight Generation
✅ Dashboard Design & Theme Customization

---

