-- FY2025 profitability benchmark
SELECT company, revenue_eur_m, recurring_operating_income_eur_m,
 ROUND(100.0 * recurring_operating_income_eur_m / revenue_eur_m, 2) AS margin_pct
FROM company_financials WHERE year=2025 ORDER BY margin_pct DESC;

-- Exact 2024–2025 profit bridge (accounting identity, not causal attribution)
SELECT company, revenue_effect_eur_m, margin_effect_eur_m, total_profit_change_eur_m
FROM operating_profit_bridge ORDER BY total_profit_change_eur_m;

-- 2025 segment ranking
SELECT segment, revenue_eur_m, recurring_operating_income_eur_m,
 ROUND(100.0 * recurring_operating_income_eur_m / revenue_eur_m, 2) AS margin_pct
FROM lvmh_segments WHERE year=2025 ORDER BY recurring_operating_income_eur_m DESC;

-- Scenarios where margin falls by 3 pp and revenue falls 10%
SELECT company, scenario_operating_profit_eur_m, profit_change_vs_2025_eur_m
FROM scenario_matrix WHERE revenue_growth_assumption_pct=-10 AND margin_change_assumption_pp=-3;
