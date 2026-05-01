# 🌏 Thailand's Decarbonization Journey (1995–2024)
### Are we truly on the path to Net Zero? A data-driven look at ASEAN’s energy transition.

---

## 1. Project Overview

Thailand has committed to achieving **Net Zero emissions by 2065**.  
But beyond policy announcements — what does historical data actually reveal?

This project analyzes CO₂ emission trends from **1995–2024**, comparing Thailand with **Indonesia** and **Vietnam** to understand:

- emission performance per capita (*carbon fairness*)
- dependence on fossil fuels
- long-term decarbonization readiness

The goal is to demonstrate how **data analytics supports sustainability decision-making**.

---

## 2. Key Analytical Questions

Before building dashboards, I defined analytical questions to guide the analysis:

- How have emissions per capita evolved across ASEAN peers?
- Is Thailand stabilizing emissions or still increasing?
- Which fossil fuel contributes most to emission growth?
- Are trends aligned with Thailand’s Net Zero ambition?

These questions transformed raw datasets into actionable insights rather than simple visualizations.

---

## 3. Tech Stack & Workflow

**Data Source**
- Global CO₂ Emissions Dataset (Our World in Data)

**Tools**
- SQL → data extraction, validation, transformation
- Power BI → visualization & dashboard development

**Workflow**
Raw Dataset → SQL Cleaning → Analytical Dataset → Power BI Dashboard → Policy Insights

---

## 4. ASEAN Comparison — Who Emits More?

![CO2 per Capita](co2_per_capita.png)

**Insight**

Thailand’s emissions per capita have plateaued in recent years, yet remain higher than Indonesia and Vietnam.  
Vietnam shows the fastest growth trend, reflecting rapid industrial expansion.

**Analytical takeaway:**  
Regional competition for decarbonization leadership is intensifying.

---

## 5. Thailand's Energy Mix — What Powers Emissions?

![TH Energy Mix](thailand_energy_mix.png)

**Insight**

Natural Gas dominates Thailand’s electricity generation and has reduced oil dependency.  
However, **coal remains a persistent base-load energy source**, slowing decarbonization progress.

**Key risk:** Coal dependency represents the largest structural barrier to Net Zero.

---

## 6. Data Preparation & Cleaning

Before analysis, the dataset was validated to ensure analytical reliability.

Key steps included:

- filtering target ASEAN countries
- removing missing emission records
- validating population values
- standardizing country naming
- preparing derived emission indicators

Example validation queries:

```sql
-- Check missing emission values
SELECT *
FROM global_emissions_data
WHERE co2_per_capita IS NULL;

-- Validate population scale
SELECT country,
       MIN(population),
       MAX(population)
FROM global_emissions_data
GROUP BY country;
```

---

## 7. SQL Analysis Approach

SQL was used to transform the cleaned dataset into an analytical table optimized for trend analysis and dashboard performance.

```sql
SELECT
    country,
    year,
    population,
    co2_per_capita,

    -- Total fossil emissions
    (coal_co2 + oil_co2 + gas_co2) AS total_fossil_co2,

    -- Year-over-year emission change
    co2_per_capita -
        LAG(co2_per_capita) OVER (
            PARTITION BY country
            ORDER BY year
        ) AS yoy_change,

    -- 5-year rolling average trend
    AVG(co2_per_capita) OVER (
        PARTITION BY country
        ORDER BY year
        ROWS BETWEEN 4 PRECEDING AND CURRENT ROW
    ) AS rolling_5yr_avg

FROM global_emissions_data
WHERE country IN ('Thailand','Indonesia','Vietnam')
AND year >= 1995
ORDER BY country, year;
```

---

## 8. Interactive Dashboard

The analytical dataset was connected to Power BI to build an interactive sustainability dashboard.

**Dashboard Features**
- Country comparison selector
- Emission trend monitoring
- Energy mix visualization
- Per-capita emission comparison

👉 Power BI Dashboard Link: *(add link here)*

![Dashboard Preview](dashboard_preview.png)

---

## 9. Strategic Roadmap — Data-Driven Recommendations

Based on analytical findings:

**1. Modernize the Grid**  
   Smart grid infrastructure is required to support renewable intermittency.

**2. Accelerate Coal Phase-Out**  
   Coal reduction represents Thailand’s largest decarbonization opportunity.

**3. Strengthen Carbon Markets**  
   Market incentives can accelerate industrial transition beyond policy mandates.

---

## 10. Limitations & Future Work

Limitations of this analysis:

- Emission data is partially model-based
- Sector-level emissions (transport, industry, buildings) were not included
- Renewable capacity does not always represent actual generation output

Future Improvements:

- Integrate GDP and energy intensity indicators
- Add sector-level emission analysis
- Develop predictive emission scenarios
