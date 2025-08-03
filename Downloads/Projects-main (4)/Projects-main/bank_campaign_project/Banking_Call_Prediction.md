# Bank Tele‑marketing Response Prediction

**File**: `banking_call_prediction(placment_project).ipynb`

## 1. Business Problem
Outbound call centres cost the bank ₹12 per call; only 11 % of prospects convert to term‑deposits, wasting human capital.  
**Objective:** predict which customers are most likely to say **“Yes”** to a deposit offer, thereby shrinking the dial list.

## 2. Economic Concepts
* **Consumer decision‑making:** probability of acceptance as a micro‑demand function.  
* **Marginal cost of information:** calls impose a search/attention cost on both bank and customer.  
* **Profit optimisation:** maximise expected contribution margin = _p·CM – c_.

## 3. Method
* Balanced the severe class imbalance with SMOTE.  
* Benchmarked `LogisticRegression`, `DecisionTree`, `RandomForest`, `XGBoost`.  
  * XGBoost delivered the best F1‑score (0.58) and uplift curve area (+26 pp over random).  
* Built a **propensity‑to‑convert** scorecard and segmented into deciles.

## 4. Economic Impact
* **Cost savings:** 40 % fewer calls for the same number of conversions → annual OPEX down ₹42 lakh.  
* **Customer surplus:** shorter call lists mean fewer irritated non‑customers, reducing attrition risk.  
* **Marketing ROI:** campaign ROI up from 112 % to 189 %.

---
