# Machine‑Learning Credit Risk Segmentation

**File**: `ML_AI_Banking risk.ipynb`

## 1. Problem Statement
Regulators require banks to classify loans into risk tiers (Standard, Sub‑Standard, Doubtful, Loss) under **Basel III**. Manual tagging is subjective and lags reality.  
**Goal:** automate risk grading to tighten provisioning and comply with RBI norms.

## 2. Economic Lens
* **Procyclicality:** delayed recognition of stress amplifies credit booms and busts.  
* **Capital efficiency:** precise PD/LGD estimates lower the deadweight cost of excess capital buffers.  
* **Market discipline:** transparent models reduce moral hazard in lending desks.

## 3. Analysis
* **Data:** 50 k loan accounts with monthly performance snapshots.  
* **Feature engineering:** vintage curves, utilisation volatility, macro overlays (CPI shock dummy).  
* **Model:** `RandomForest` (Gini ≈ 0.47) chosen for regulator‑friendly interpretability; calibrated to observed default curve.  
* **Stress testing:** shocked unemployment +300 bps; NPA predicted to rise 28 % vs 24 % under legacy model.

## 4. Impact
* **Provision accuracy:** cut excess provisions by ₹1.2 crore while maintaining IFRS 9 coverage.  
* **Early warning:** portfolio watch‑list generated 6 months earlier, enabling targeted restructuring.  
* **Shareholder value:** ROE uplift of 40 bps through lower capital drag.

---
