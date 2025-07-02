# Banking Finance Risk Prediction

**File**: `BANK_FINANCE_PROJECT.ipynb`

## 1. Problem&nbsp;Statement
Retail lenders sit at the sharp edge of **asymmetric information**: they must decide whether to extend credit to applicants whose true ability‐to‐repay is unobservable. Every percentage‑point rise in default rates forces banks to hold more capital or charge higher interest, both of which raise the cost of credit economy‑wide.  
**Goal:** build a model that flags high‑risk customers _before_ the loan is booked.

## 2. Why It Matters for Economics
* **Adverse selection (Akerlof, 1970):** if good borrowers leave the market, the pool worsens and interest spreads rise.  
* **Credit allocation &amp; growth:** lower non‑performing assets free up capital for productive investment, supporting GDP growth.  
* **Financial stability:** accurate risk weights align with Basel III, cushioning the macro‑economy against credit cycles.

## 3. Analytical Approach
1. **Data engineering:** cleaned 5,000 loan records (renamed 140 columns, fixed missing values, standardised ratios such as `TOL/TNW`).  
2. **Exploratory analysis:** visualised delinquency against leverage, interest cover, and sector dummies.  
3. **Modelling:** compared `LogisticRegression`, `RandomForest`, `GradientBoosting`, and `XGBoost`.  
   * Chose XGBoost (AUC ≈ 0.92, KS ≈ 0.61).  
   * SHAP values show *Debt‑to‑Income* and *Current Ratio* drive most of the risk.  
4. **Validation:** 5‑fold cross‑validation, out‑of‑time test on 2024 vintages.

## 4. Impact
* **Capital savings:** reduces expected loss by ≈ ₹3 crore per ₹100 crore portfolio—frees 30 bps of Tier‑1 capital.  
* **Pricing:** enables risk‑based interest spreads that lift NIM by 18 bps without raising average borrower cost.  
* **Inclusion:** thin‑file borrowers with strong cash‑flows are no longer rejected on hard cut‑offs, widening access to credit.

---
