-- 1: Emissions by year for Japan
SELECT c.name, e.year, e.co2_mt
FROM Emission e
JOIN Country c ON e.country_id = c.country_id
WHERE c.name = 'Japan'
ORDER BY e.year;

-- 2: Compare 2010 vs 2022 emissions
SELECT c.name,
       SUM(CASE WHEN e.year = 2010 THEN e.co2_mt END) AS emissions_2010,
       SUM(CASE WHEN e.year = 2022 THEN e.co2_mt END) AS emissions_2022,
       SUM(CASE WHEN e.year = 2022 THEN e.co2_mt END) -
       SUM(CASE WHEN e.year = 2010 THEN e.co2_mt END) AS change_mt
FROM Country c
JOIN Emission e ON c.country_id = e.country_id
GROUP BY c.name
ORDER BY change_mt;

-- 3: Compare latest emissions with NDC target
SELECT c.name,
       n.target_year,
       n.target_emissions_mt,
       e.co2_mt AS latest_emissions,
       (e.co2_mt - n.target_emissions_mt) AS gap_to_target
FROM Country c
JOIN NDC n      ON c.country_id = n.country_id
JOIN Emission e ON c.country_id = e.country_id
WHERE e.year = 2022
  AND n.target_year = 2030;

-- 4: Simple on-track / off-track evaluation
SELECT c.name,
       e.co2_mt AS latest_emissions,
       n.target_emissions_mt,
       CASE
         WHEN e.co2_mt <= n.target_emissions_mt THEN 'At or below target (early)'
         WHEN e.co2_mt <= n.target_emissions_mt * 1.10 THEN 'Close, needs improvement'
         ELSE 'Far from NDC target'
       END AS ndc_progress
FROM Country c
JOIN NDC n      ON c.country_id = n.country_id
JOIN Emission e ON c.country_id = e.country_id
WHERE e.year = 2022
  AND n.target_year = 2030;
