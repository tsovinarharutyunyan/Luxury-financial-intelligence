# Luxury Financial Intelligence

**Financial performance analysis | Python · pandas · SQL (SQLite) · Tableau**

An analysis of **Hermès, LVMH and Kering** using reported FY2024 and FY2025 financial figures. The project compares revenue growth, recurring operating profit, gross and recurring operating margins, and the share of revenue represented by cost of goods sold (COGS). It also tests simple hypothetical revenue-and-margin scenarios.

## Questions explored

- Which companies increased or decreased revenue between 2024 and 2025?
- Did recurring operating profit change faster than revenue?
- How did recurring operating margins and COGS shares change?
- How would operating profit change under illustrative revenue and margin assumptions?

## Selected findings

| Company | FY2025 revenue (€m) | Revenue growth | FY2025 recurring operating margin | Recurring operating profit growth |
|---|---:|---:|---:|---:|
| Hermès | 16,002 | +5.48% | 41.05% | +6.81% |
| LVMH | 80,807 | −4.58% | 21.97% | −9.28% |
| Kering | 14,675 | −13.03% | 11.11% | −33.16% |

Hermès was the only company in this sample with positive reported revenue growth. LVMH remained the largest by revenue, but its recurring operating profit fell faster than revenue. Kering recorded the largest revenue decline and operating-margin deterioration of the three. These comparisons are descriptive, not evidence of the causes of the changes.

## Methods

1. Load the prepared company financial data and check missing values and duplicate company-year records.
2. Calculate 2024–2025 revenue and recurring operating profit growth.
3. Calculate gross margin, recurring operating margin and COGS share.
4. Cross-check revenue growth using a SQLite self-join.
5. Export three small datasets for Tableau.
6. Calculate **27 illustrative scenarios**: three companies × three revenue assumptions (−5%, 0%, +5%) × three operating-margin changes (−2, 0, +2 percentage points).

The scenarios are **not forecasts**. Their outputs are based on hypothetical changes to each company's FY2025 revenue and recurring operating margin.

## Files

| File | Purpose |
|---|---|
| `Luxury_Financial_Intelligence.ipynb` | Main Python and SQL analysis |
| `luxury_company_financials.csv` | Prepared financial figures, reporting basis and source links |
| `tableau_company_2025.csv` | Company-level 2025 KPIs |
| `tableau_growth_comparison.csv` | 2024–2025 growth and margin comparisons |
| `tableau_scenarios.csv` | 27 illustrative scenario results |

**Tableau status:** The existing Tableau Public workbook is still under final review. The Tableau workbook is being finalized separately and is not included in this repository update. Its embedded extracts and scenario data source must be reconciled with the Python exports before publication.

## How to run

Place `Luxury_Financial_Intelligence.ipynb` and `luxury_company_financials.csv` in the same folder. Open the notebook in Jupyter and run all cells from top to bottom. Required packages: `pandas`, `matplotlib`, `ipykernel`; `sqlite3` is included with Python. The notebook writes the three `tableau_*.csv` exports to the working folder.

## Sources and limitations

- [Hermès — FY2025 full-year results](https://assets-finance.hermes.com/s3fs-public/node/pdf_file/2026-02/1770842738/hermes_20260212_pr_2025fullyearresults_va.pdf)
- [LVMH — official key figures](https://www.lvmh.com/en/investors/key-figures)
- [Kering — official finance website](https://www.kering.com/en/finance/about-kering/)

All amounts are in **EUR millions**. Kering's FY2024 figures are the comparative figures used in its FY2025 reporting. Reported revenue changes are **not** organic or constant-currency growth. The companies have different business mixes and reporting definitions. COGS is calculated as revenue less gross profit; it does not capture every operating cost. This is a small, descriptive comparison of three companies, not an industry-wide or investment analysis.