# real-estate-company-performance-analysis
## sales analysis using sql workbench..  joined four tables on sql from four different files to get exploratory data analysis and visualized on powerbi. null values kept because it represents important analysis
# INTRODUCTION
## Real Estate Performance Analysis (2020–2025)
This analysis provides a data-driven overview of real estate performance from 2020–2025.
- Tracks revenue growth, transaction volumes, average sale price, and buyer base.  
- Highlights market trends and areas of strength.  
- Offers an outlook for 2025, including buyer opportunities still in the pipeline.  
- Built using **SQL** (for data preparation and analysis) and **Power BI** (for visualization and insights).
---
### 🧹 Data Cleaning & Key Columns
#### Data Cleaning
- Imported 4 tables & joined with SQL.  
- Preserved meaningful null values.  
- Corrected data types (dates, numbers, text).  
- Created new columns (Year, Agent & Buyer Full Names).  
- Applied DAX for accuracy.
#### Key Columns
- **Transactions:** ID, Price, Date  
- **Buyers:** ID, Name, Budget  
- **Property:** ID, Address, City, Price  
- **Agents:** ID, Name, Email
- ## 🏠 Real Estate Performance Insights (2020–2025)
### 1. Revenue Growth
- Sales increased from **$5.8M (2020)** to **$7.6M (2024)**.  
- This shows sustained growth momentum and strong performance in property sales.  
- Represents a **31% growth** over 5 years.  
### 2. Stable Transaction Volume With 2024 Peak
- Annual deals hovered between **12–15 transactions**.  
- **2024** recorded **15 deals**, the highest in 5 years — showing **peak productivity** by the sales team.  
### 3. Average Sale Price Growth
- Average property sale price increased from **$448K (2020)** to **$509K+ (2024)**.  
- Indicates a shift toward **premium property sales**.  
### 4. Buyer Base
- Maintained a consistent **10–14 unique buyers yearly**.  
- **2021** peaked with **14 buyers**, showing strong client acquisition.  
- Out of **50 total buyers**, **41** purchased at least one property — **9 buyers** remain without a purchase.  
### 5. Property & Agent Overview
- **51 unique properties** were sold across 5 years.  
- **10 agents** worked for the company during this period.  
- **Jeffery Nelson** ranked as the **top agent**, generating **$6.1M** in sales from **8 properties** sold.  
- **Blackbury** emerged as the **top-performing city** for this real estate firm.  
- **Michael Ochoa** was the **top buyer**, purchasing **5 properties** in 5 years.  

