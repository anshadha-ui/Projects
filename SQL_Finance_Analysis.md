# Loan Portfolio Performance Dashboard (SQL)

**File**: `Sql_fianace_analysis project.sql`

## 1. Objective
Lenders need a single source of truth on loan book health for **Asset–Liability Committee (ALCO)** meetings.  
This SQL script builds views that power Tableau dashboards on disbursements, delinquency, and recovery.

## 2. Economic Angle
* **Credit rationing &amp; risk‑based pricing:** understanding DTI and payment morale guides lending constraints.  
* **Liquidity management:** delinquency trends affect cash‑flow forecasting and deposit pricing.  
* **Systemic risk:** portfolio concentration metrics tie back to financial‑stability monitoring.

## 3. Techniques
* Window functions to compute rolling `30+ DPD` rates.  
* Year‑on‑year growth in originations and average coupon.  
* Segment‑wise loss given default and `Vintage × Cohort` NPA heat‑map materialised views.

## 4. Outcome
* **Decision latency** dropped from 2 weeks (Excel) to real‑time dashboard refresh.  
* Supported a strategic pivot toward lower‑ticket personal loans, lifting risk‑adjusted yield by 60 bps.  
* Automated script reusable across geographies, aligning with Mastercard’s global data playbook.

---
