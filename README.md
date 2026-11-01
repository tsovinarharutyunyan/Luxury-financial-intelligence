# The Economics of Luxury | Financial Intelligence

**A financial and strategy case study of Hermès, LVMH and Kering (FY2023–FY2025, coverage varies).**

## Investment-committee questions
- Which luxury group has the strongest operating profitability?
- How much of the 2024–2025 operating profit change can be mechanically decomposed into revenue and margin effects?
- Where is LVMH profit concentrated by segment?
- How sensitive are profits to revenue and margin scenarios?

## Key findings
- FY2025 recurring operating margins: **Hermès 41.05%, LVMH 21.97%, Kering 11.11%**.
- **Revenue size is not profitability:** LVMH generates the largest absolute sales, while Hermès has the highest recurring operating margin.
- **Kering 2024 figures are restated** in the FY2025 comparative after the classification of Kering Beauté as discontinued operations; older published FY2024 totals are not directly comparable.
- **Pricing vs volume cannot be separately identified** from group-level revenue and margin figures. The operating-profit bridge is a transparent accounting identity, not proof of pricing power.

## Project architecture
- `Luxury_Financial_Intelligence.ipynb` — reproducible notebook: validation, benchmarking, bridge, segment concentration, sensitivity.
- `analysis.sql` and `data/luxury_financial_intelligence.sqlite` — SQL-ready data and business queries.
- `data/*.csv` — Tableau-ready source, profit bridge, segment contribution and scenario matrix.
- `charts/` — three publication-ready visual summaries.
- `tableau_dashboard_guide.md` — detailed instructions for a multi-page interactive Tableau workbook.
- `sources_and_methodology.md` — definitions, limitations and direct official links.
- `investment_committee_memo.md` — executive-style synthesis.

## Run
Install `pip install -r requirements.txt`, then open and **Run All** in Jupyter from this folder. Tableau Public for Mac can load the CSV files. The completed Tableau packaged workbook is included at `tableau/Luxury_Financial_Intelligence.twbx`. Open it in Tableau Desktop/Public; Tableau Public publishing is a separate manual step.

## Analytical limitations
This is an intentionally small, verified company-year financial panel, not a large dataset or a statistically powered regression study. LVMH covers 2023–2025; Hermès and Kering cover 2024–2025. All monetary amounts are € million unless stated. The scenario matrix is illustrative and does not predict future results.


## Tableau dashboards
- `01 Executive Overview`: FY2025 revenue, recurring operating margin, and reported year-over-year revenue growth.
- `02 Scenario Intelligence`: Hermès sensitivity matrix (five revenue assumptions × three margin assumptions); assumptions are illustrative, not forecasts.

## Reproducibility and QA
The notebook was executed successfully from the repository root. CSV margin calculations, profit bridge reconciliation, scenario baselines, and SQLite row counts were checked independently. See `QA_REPORT.md`.

## Publication
Open `tableau/Luxury_Financial_Intelligence.twbx` in Tableau and publish it to Tableau Public separately. Public Tableau workbooks expose underlying included data, which here are publicly sourced company figures.
