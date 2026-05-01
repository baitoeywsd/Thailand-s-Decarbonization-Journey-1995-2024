# 🌏 Thailand's Decarbonization Journey (1995-2024)
### *A data-driven deep dive into ASEAN’s energy transition.*
**Tech Stack:** SQL (Window Functions) | Power BI | Sustainability Engineering

## 1. Overview
This analysis summarizes CO2 emission trends over a 29-year period (1995–2024) to evaluate Thailand’s progress toward its **2065 Net Zero target.** By benchmarking national data against regional peers—**Indonesia** and **Vietnam**—this work identifies the key factors and structural challenges involved in the transition to cleaner energy sources.

## 2. Objective
The primary goal is to examine the relationship between economic growth and environmental impact. The analysis focuses on Thailand’s **Energy Mix** and its long-term reliance on fossil fuels. By processing three decades of historical data, this study transforms statistical metrics into a clear overview of the country’s current energy trajectory and future outlook.

## 3. Data Infrastructure

A structured pipeline ensures data integrity and a "Single Source of Truth":

  **Workflow:** [Data Source] → [SQL] → [Power BI] → [Strategic Roadmap]
  
* **Source:** Global emissions & energy data (1995–2024) via *Our World in Data*.
* **SQL:** Data cleaning, regional filtering (TH, ID, VN), and YoY calculations.
* **Power BI:** Interactive dashboards for trend analysis and strategic insights.
* **Domain Expertise:** Sustainability Engineering principles for data validation.

## 4. Exploratory Data Analysis (EDA)
**Pillar 1: The ASEAN Showdown (CO2 per Capita)**

Comparison of carbon intensity between regional peers to evaluate "Carbon Fairness" relative to population size.

<p align="center">
  <img src="Graph1.png" width="800">
</p>

**Key Insight:** Thailand maintains a consistently higher emission rate per person compared to Vietnam, highlighting a more carbon-intensive energy infrastructure.

**Pillar 2: Thailand’s Energy Mix (1995–2024)**

An analysis of fuel source distribution over three decades, identifying the core dependencies within Thailand’s power sector.

<p align="center">
  <img src="Graph2.png" width="800">
</p>

**Key Insight:** Fossil fuels remain the dominant energy source, with a heavy reliance on Natural Gas. While Renewables show growth, the pace is currently insufficient to meet the aggressive 2065 Net Zero timeline.

**Pillar 3: Fossil Fuel Persistence vs. Renewable Growth**

A direct comparison between traditional energy reliance and the expansion of clean energy initiatives.

<p align="center">
  <img src="Graph3.png" width="800">
</p>

**Key Insight:** Despite increasing investment in solar and wind, the sheer scale of fossil fuel consumption continues to create a "Carbon Lock-in" effect that complicates the rapid transition.

**Pillar 4: Economic Growth vs. Emission Intensity**

This pillar examines the "Decoupling" effect—determining whether Thailand can grow its GDP without a proportional increase in CO2 emissions.

<p align="center">
  <img src="Graph4.png" width="800">
</p>

Key Insight: While Thailand shows signs of relative decoupling, the correlation remains strong. Achieving absolute decoupling requires a more aggressive shift in industrial efficiency and low-carbon investment.

## 5. SQL Implementation: Data Transformation

To prepare the dataset for visualization, Window Functions were utilized to calculate year-over-year (YoY) growth and regional rankings directly within the SQL layer.

[Insert Figure 5: SQL Snippet showing Window Functions or Common Table Expressions (CTEs)]

**Key Insight:** Handling data logic at the SQL level ensures high performance in Power BI, allowing for seamless filtering across three decades of historical data.

## 6. Strategic Roadmap & Recommendations

Based on the data trends, three strategic pillars are essential for Thailand to bridge the gap toward Net Zero 2065:

* **Accelerating Renewable Integration:** Beyond solar and wind, focus must shift toward Grid Modernization and energy storage to manage the intermittency of clean energy.
* **Enhancing Energy Efficiency:** Decoupling GDP from emissions requires deep-tier industrial efficiency upgrades and a shift toward a circular economy model.
* **Policy & Carbon Pricing:** Implementing carbon taxation or trading schemes will be the "Final Boss" in disincentivizing fossil fuel reliance and attracting low-carbon investment.

[Insert Figure 6: Strategic Roadmap Graphic]


