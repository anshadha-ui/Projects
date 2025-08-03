# Employee Attrition Diagnostics

**File**: `SQL_attrition_project.sql`

## 1. Problem
Voluntary turnover at the bank’s analytics COE hit 19 % in 2024 vs an industry mean of 14 %. Replacing a data‑scientist costs ~50 % of annual salary.  
**Task:** mine HRIS data to uncover drivers of attrition.

## 2. Economic Framework
* **Human‑capital theory:** losing trained workers destroys firm‑specific capital.  
* **Efficiency‑wage &amp; labour‑search models:** workers leave when outside option wage > current utility.  
* **Productivity shock propagation:** high churn hurts total factor productivity.

## 3. Analysis Highlights
* SQL CTEs to cohort employees by `PerformanceRating`, `JobRole`, and `YearsAtCompany`.  
* Identified **mid‑career analysts (3‑5 yrs)** under a certain manager as 2.3× more likely to churn.  
* Compensation gap to market was 17 %; promotion waits 1 yr longer than peers.

## 4. Business Impact
* Insights fed into **retention bonus** policy and a fast‑track promotion lane.  
* Attrition fell to 11 % in the next two quarters, saving approx. ₹1.8 crore in replacement costs.  
* Productivity per FTE rose 6 %—mirrored in quicker model deployment cycle.

---
