# 🌏 Thailand's Decarbonization Journey (1995-2024)
***Are we truly on the path to Net Zero? A deep dive into ASEAN's energy shift.***

## 1. Why this project? (The Story)
Thailand has set a bold target: **Net Zero by 2065**. But what does the data actually tell us?

I started this project to look beyond the headlines. By analyzing CO2 emission data from **1995 to 2024**, I compared Thailand with its neighbors—**Indonesia** and **Vietnam**—to see who is leading the "green race." This analysis isn't just about big numbers; it’s about **"Carbon Fairness"** (emissions per capita) and our **"Energy Mix"** (the fuels powering our nation) to identify where the real challenges lie.

## 2. What you’ll get from this analysis
*   **The ASEAN Showdown:** Who emits more per person? A comparative look at Thailand's standing in the region.
*   **Our Fuel Secret:** How much do we actually rely on Coal and Gas despite the rise of renewables?
*   **The Net Zero Reality Check:** Data-driven insights into what needs to change for Thailand to hit its environmental targets.

## 3. Behind the Scenes (The Tech Stack)
I leveraged a modern data analytics workflow to ensure accuracy and clarity:
*   **The Data:** Global CO2 emissions dataset (1950-2024) from *Our World in Data*.
*   **SQL:** Used for data extraction, cleaning, and complex transformations.
*   **Power BI:** Used for building interactive dashboards and advanced data visualizations.
*   **The Goal:** Merging Data Analytics with **Sustainability Engineering** to find actionable solutions.

---

## 4. The ASEAN Showdown: Who's the Real Polluter?
![CO2 per Capita](co2_per_capita.png)
> **Insight:** While Thailand's emissions per capita have plateaued, we still maintain a higher per-person footprint compared to Indonesia and Vietnam. However, Vietnam is rapidly catching up, reflecting its industrial boom.

## 5. What's inside Thailand's Energy Tank?
![TH Energy Mix](thailand_energy_mix.png)
> **Insight:** Thailand’s heavy reliance on Natural Gas has helped reduce the share of Oil, but **Coal** remains a persistent base-load source. Transitioning away from Coal is the "final boss" for our decarbonization goals.

---

## 6. How I Handled the Data (The SQL Approach)
To prepare the dataset for Power BI, I used SQL to filter and aggregate the raw data, ensuring a "Single Source of Truth" for the dashboard.
```sql
/* Filtering for target countries and relevant years */
SELECT 
    country, 
    year, 
    co2_per_capita, 
    coal_co2, 
    oil_co2, 
    gas_co2,
    population
FROM global_emissions_data
WHERE country IN ('Thailand', 'Indonesia', 'Vietnam')
  AND year >= 1995
ORDER BY country, year;

## 7. Strategic Roadmap: The Way Forward
As a Sustainability Professional, I believe data is useless without an action plan. Here are my key takeaways:

1.  **Modernize the Grid:** We must move beyond just adding more solar panels. Thailand needs a **Smart Grid** that can handle the intermittency of renewables to reduce our reliance on Fossil Fuel base-loads.
2.  **Accelerate the Coal Exit:** While Natural Gas is a "bridge fuel," a clear timeline for decommissioning coal-fired plants is essential for the 2065 Net Zero target.
3.  **Leverage Carbon Markets:** Strengthening the Carbon Credit ecosystem will provide the financial incentive for industries to decarbonize faster than policy mandates require.

---
