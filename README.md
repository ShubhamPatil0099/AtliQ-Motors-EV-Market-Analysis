# AtliQ-Motors-EV-Market-Analysis
End-to-end EV market analysis using SQL and Power BI to identify market opportunities, state-wise EV penetration and competitive positioning in India.

# ⚡ AtliQ Motors – Electric Vehicle Market Analysis (India)

## 📌 Project Overview

This project focuses on analyzing the Indian Electric Vehicle (EV) market to identify market opportunities, understand consumer preferences, evaluate competition, and support AtliQ Motors in developing its market-entry strategy.

AtliQ Motors, a fictional American EV manufacturer, has established a strong presence in North America, where electric and hybrid vehicles account for approximately 25% of the market. However, India's EV market penetration remains relatively low, presenting an opportunity for potential expansion.

The objective of this project is to analyze India's EV market using SQL, Power BI, and secondary research to identify promising states, evaluate competitors, understand market trends, and provide data-driven recommendations for AtliQ Motors.

---

## 🎯 Business Objectives

The primary objectives of this project are:

- Analyze the growth and current state of India's EV market.
- Identify states with the highest EV adoption and market potential.
- Evaluate leading and underperforming EV manufacturers.
- Understand seasonal trends and growth patterns in EV sales.
- Compare EV adoption across different vehicle categories (2-Wheeler and 4-Wheeler).
- Investigate consumer preferences, government subsidies, and charging infrastructure.
- Identify potential manufacturing locations and market-entry opportunities.
- Develop actionable recommendations to support AtliQ Motors' expansion strategy.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| MySQL Workbench | SQL queries, data analysis, and business problem-solving |
| MySQL | Data extraction, transformation, aggregation, and analytical calculations |
| Microsoft Power BI | Interactive dashboard development and data visualization |

---

## 📂 Dataset Overview

The project uses three CSV files containing information about India's EV market.

| Dataset | Description |
|---|---|
| `electric_vehicle_sales_by_state.csv` | Monthly EV sales by state, vehicle category, and total vehicle registrations |
| `electric_vehicle_sales_by_makers.csv` | Monthly EV sales by manufacturers and vehicle categories |
| `dim_date.csv` | Date dimension containing fiscal year and quarter information |

**Key Data Attributes:**

- Date
- State
- Vehicle Category (2-Wheeler / 4-Wheeler)
- EV Manufacturer
- Electric Vehicles Sold
- Total Vehicles Sold
- Fiscal Year
- Quarter

**Analysis Period:** FY 2022 – FY 2024

*Note: The fiscal year follows the April–March financial year convention.*

---

## 🔍 SQL Analysis – Business Questions

SQL analysis was performed to answer business questions related to market growth, state-wise EV adoption, manufacturer performance, and future opportunities.

### Primary Analysis

The primary analysis covers the following 10 business questions:

| No. | Business Question | Analytical Objective |
|---|---|---|
| 01 | Top 3 and bottom 3 manufacturers in 2W EV sales for FY 2023 and FY 2024 | Evaluate manufacturer performance |
| 02 | Top 5 states with the highest EV penetration in 2W and 4W categories in FY 2024 | Identify leading EV-adopting states |
| 03 | States experiencing a decline in EV penetration between FY 2022 and FY 2024 | Identify markets with declining adoption |
| 04 | Quarterly sales trends of the top 5 4W EV manufacturers | Analyze competitive performance |
| 05 | Comparison of EV sales between Delhi and Karnataka in 2024 | Evaluate regional market differences |
| 06 | 4W EV manufacturers ranked by CAGR | Identify fast-growing manufacturers |
| 07 | Top 10 states ranked by total vehicle sales CAGR | Identify growing automotive markets |
| 08 | Months with the highest and lowest EV sales | Understand seasonal sales patterns |
| 09 | Project EV penetration in the top 10 states by 2030 | Evaluate future market potential |
| 10 | Estimate EV revenue growth using average vehicle prices | Understand the financial potential of the market |

### Secondary Research

Secondary research was conducted to understand factors beyond historical sales data.

The analysis addresses six key questions:

1. **Consumer Preferences:** What factors influence customers to purchase electric vehicles?
2. **Government Subsidies:** How have government subsidies influenced EV adoption, and which states provide significant incentives?
3. **Charging Infrastructure:** What is the relationship between charging infrastructure and EV adoption?
4. **Brand Ambassador:** Who could be an appropriate brand ambassador to strengthen AtliQ Motors' positioning in India?
5. **Manufacturing Location:** Which Indian state would be suitable for establishing an EV manufacturing facility?
6. **Strategic Recommendations:** What are the top three recommendations for AtliQ Motors' entry into the Indian EV market?

---

## 📊 Power BI Dashboard

An interactive four-page Power BI dashboard was developed to present the key findings and provide a comprehensive view of India's EV market.

### Dashboard Pages

**1. Market Overview**

Focuses on understanding the overall size and growth of India's EV market.

Key analysis:
- EV sales and market penetration.
- Year-over-year growth.
- 2W vs. 4W sales comparison.
- Estimated revenue trends.

**2. State Analysis**

Focuses on identifying promising states and regional EV adoption patterns.

Key analysis:
- State-wise EV penetration.
- Top-performing states.
- Sales growth and CAGR.
- Delhi vs. Karnataka comparison.
- States with declining EV adoption.

**3. Competition Analysis**

Focuses on understanding the competitive landscape of India's EV industry.

Key analysis:
- Top-performing EV manufacturers.
- Manufacturer-wise sales trends.
- Quarterly 4W sales performance.
- Manufacturer CAGR.
- Competitive market positioning.

**4. Sales Trends & Future Outlook**

Focuses on identifying sales patterns and evaluating future market opportunities.

Key analysis:
- Monthly and seasonal EV sales trends.
- Historical market growth.
- Future EV penetration projections.
- Market opportunities for AtliQ Motors.

### Dashboard Screenshots

*The dashboard screenshots will be added here.*

---

## 💡 Key Insights

The following are some of the important findings from the analysis.

### 1. EV Market Revenue Potential

- Estimated 2W EV revenue increased from ₹21 billion to ₹79 billion.
- Estimated 4W EV revenue increased from ₹28 billion to ₹130 billion.
- 4W EVs contributed approximately 62% of FY 2024 EV revenue despite representing only 8.5% of EV units sold.

**Business Insight:** The 4W segment represents a significant revenue opportunity, while the 2W segment offers opportunities in terms of sales volume.

*Revenue figures are estimates based on assumed average vehicle prices, not reported manufacturer revenue.*

### 2. State-wise EV Penetration

- Goa recorded the highest 2W EV penetration at approximately 17.99%.
- Kerala followed with approximately 13.52%.
- Karnataka recorded approximately 11.57%.
- Kerala recorded the highest 4W EV penetration at approximately 5.76%.

**Business Insight:** States with higher EV penetration could offer valuable insights into customer adoption and market-entry opportunities.

### 3. Regional Market Comparison

- Karnataka recorded 160,989 EV sales.
- Delhi recorded 46,724 EV sales.

**Business Insight:** Karnataka demonstrated a considerably larger EV sales market compared with Delhi during the analyzed period.

### 4. Consumer Purchase Preferences

Secondary research highlighted the following purchase drivers:

| Purchase Factor | Consumer Response |
|---|---:|
| Environmental Benefits | 68% |
| Fuel Cost Savings | 63% |
| Lower Maintenance Costs | 56% |

**Business Insight:** Environmental awareness and long-term cost savings are important factors influencing EV purchase decisions.

### 5. Government Subsidies

- 2W EV subsidy benefits declined by approximately 56%.
- 4W EV subsidy benefits remained relatively stable during the analyzed period.

**Business Insight:** Changes in government incentives can influence EV affordability and market adoption.

### 6. Manufacturing Location

Gujarat emerged as the preferred manufacturing location based on the secondary research, with Tamil Nadu identified as an alternative.

**Business Insight:** Manufacturing location decisions should consider infrastructure, investment incentives, supply chains, and the automotive ecosystem.

---

## 📈 Business Recommendations

Based on the combined SQL analysis, Power BI dashboard, and secondary research, the project aims to help AtliQ Motors:

- Prioritize states with strong EV adoption and promising growth potential.
- Evaluate opportunities across both 2W and 4W vehicle segments.
- Understand the competitive landscape before entering the Indian market.
- Consider consumer preferences, charging infrastructure, and government incentives.
- Evaluate suitable manufacturing locations based on business and operational factors.

---

## 📁 Repository Structure

The repository is organized into the following sections:

```text
AtliQ-Motors-EV-Market-Analysis/
│
├── README.md
│
├── Dataset/
│
├── SQL/
│   ├── Primary_Questions/
│   └── Secondary_Questions/
│
├── PowerBI/
│   └── AtliQ_Motors_Dashboard.pbix
│
├── Dashboard_Screenshots/
│
└── Presentation/
    └── AtliQ_Motors_Presentation.pdf
```

---

## 📚 Project Source & Acknowledgement

This project is part of the **Codebasics Resume Project Challenge**.

The business case, datasets, and analytical questions were provided as part of the educational project challenge.

This project was completed as a learning exercise to strengthen practical SQL, Power BI, business analysis, and data storytelling skills.

**Disclaimer:** AtliQ Motors is a fictional company created for educational and analytical purposes. The findings and recommendations are based on the provided datasets and secondary research and should not be interpreted as actual company performance or financial results.

---

## 👨‍💻 Author

**Shubham Patil**

Aspiring Data Analyst | SQL | Power BI | Business Analytics
