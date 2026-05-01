-- ============================================================
-- SQL Script for Sustainability Data Analysis (CO2 Emissions)
-- Focus: Analyzing Emission Trends for Thailand & Neighbors
-- ============================================================

/* 
1. Calculating Year-over-Year (YoY) Growth
Using LAG() Window Function to compare current year vs previous year.
*/

WITH CarbonData AS (
    SELECT 
        country, 
        year, 
        co2,
        -- Fetch previous year's CO2 to compare with current year
        LAG(co2) OVER (PARTITION BY country ORDER BY year) AS prev_year_co2
    FROM co2_emission_1950_2024
    WHERE country IN ('Thailand', 'Indonesia', 'Vietnam')
)

SELECT 
    country, 
    year, 
    co2,
    -- Calculation: ((Current - Previous) / Previous) * 100
    ROUND(((co2 - prev_year_co2) / NULLIF(prev_year_co2, 0)) * 100, 2) AS yoy_growth_percent
FROM CarbonData
WHERE year BETWEEN 1995 AND 2024
ORDER BY country, year;

/* 
2. Identifying Peak Emissions Year
Determining when Thailand reached its highest CO2 levels.
*/

SELECT 
    country, 
    MAX(co2) AS peak_co2,
    year AS peak_year
FROM co2_emission_1950_2024
WHERE country = 'Thailand'
GROUP BY country, year
ORDER BY co2 DESC
LIMIT 1;