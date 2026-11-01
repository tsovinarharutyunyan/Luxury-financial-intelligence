# Quality assurance — final package

## Passed checks
- Notebook executed from clean outputs with no exceptions (from repository root).
- 7 company-year rows, 15 segment-year rows, 3 bridge rows, 45 scenario rows.
- Group operating margins reconcile to operating profit / revenue.
- All three 2024–2025 profit bridges reconcile to reported profit changes.
- Scenario profits reconcile to base operating profit and displayed profit changes (centi-million rounding tolerance).
- SQLite row counts match CSV tables.
- Tableau `.twbx` archive contains a workbook and three Hyper extracts.

## Important limitations
- 2025 operating margins: Hermès 41.05%, LVMH 21.97%, Kering 11.11%.
- Scenario margin percentages in CSV are rounded to 3 decimal places, while scenario profits use higher precision. Recomputing from *displayed* margin values may differ by up to ~€0.10 million; the scenario profit calculation itself reconciles to the full-precision base margin within €0.005 million. This is a display-precision issue, not a material financial discrepancy.
- Bridge decomposition is an exact accounting identity, not proof of causal pricing power or volume effects.
- LVMH segment totals exclude corporate/elimination adjustments.
- Company reporting definitions and reporting periods are not perfectly identical; Kering 2024 comparative is restated.
- Source URLs and financial disclosures were not independently re-fetched in this offline QA; verify original releases before asserting source-level audit.
- Workbook XML and packaged extracts were checked, but a visual Tableau rendering check on the user's Mac remains necessary.
