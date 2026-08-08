<div align="center">

# 🌾 Plant Genotype Phenotypic Analysis in R

> **Measuring 100 plant genotypes and turning trait data into selection decisions** —
> a step-by-step R workflow, from first look at the data to a live web dashboard.

[![Plant Breeder & Genetics](https://img.shields.io/badge/🌱_Plant_Breeder_%26_Genetics-2E7D32?style=for-the-badge)](https://github.com/)

*Abiotic Stress Breeder · Trait Selection · Reproducible Pipelines*

[![R](https://img.shields.io/badge/R-4.3+-276DC3?style=for-the-badge&logo=r&logoColor=white)](https://www.r-project.org/)
[![Statistics](https://img.shields.io/badge/Statistics-7B2CBF?style=for-the-badge)](https://en.wikipedia.org/wiki/Statistics)
[![Tidyverse](https://img.shields.io/badge/Tidyverse-1A162D?style=for-the-badge&logo=tidyverse&logoColor=white)](https://www.tidyverse.org/)
[![ggplot2](https://img.shields.io/badge/ggplot2-F8766D?style=for-the-badge)](https://ggplot2.tidyverse.org/)
[![Command Line](https://img.shields.io/badge/Command_Line-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Scientific Writing](https://img.shields.io/badge/Scientific_Writing-008080?style=for-the-badge&logo=latex&logoColor=white)](https://www.latex-project.org/)
[![Markdown](https://img.shields.io/badge/Markdown-000000?style=for-the-badge&logo=markdown&logoColor=white)](https://daringfireball.net/projects/markdown/)

[Overview](#-dataset-overview) · [Modules](#-project-modules) · [Workflow](#-workflow-pipeline)

</div>

---

## 📊 Dataset Overview

Phenotypic data recorded for **100 plant genotypes** (`G001` – `G100`).
Each genotype is described by one ID and five measured/scored traits:

### 📋 Recorded Variables

| Variable | What it means |
|:---:|---|
| `Genotype`<br>**Genotype ID** | Unique code given to each plant line (`G001` – `G100`) |
| `L`<br>**Length** | Total plant length (height), base to tip — **cm** |
| `B`<br>**Breadth** | Canopy width at its widest point — **cm** |
| `SL`<br>**Shoot Length** | Length of the above-ground shoot — **cm** |
| `RL`<br>**Root Length** | Length of the primary root system — **cm** |
| `LC`<br>**Leaf Colour** | Visual score: *Light Green · Green · Dark Green* |

> 💡 **Field note:** `SL` and `RL` are the standard abbreviations used in seedling-vigor
> research, and `LC` is typically scored against a **Leaf Colour Chart (LCC)** —
> a simple, non-destructive visual standard developed by IRRI.

---

## 🗂️ Project Modules

Five numbered scripts — run them in order, each one builds on the previous.

| # | Module | Script | What it does (in plain words) | Packages |
|:-:|--------|--------|-------------------------------|----------|
| 1️⃣ | **Exploratory Data Analysis** | [`01_exploratory_data_analysis.R`](./01_exploratory_data_analysis.R) | First look at the data — summary stats, correlations, bar & scatter plots | `readxl` `dplyr` `ggplot2` |
| 2️⃣ | **ANOVA & Post-Hoc Test** | [`02_anova_and_posthoc.R`](./02_anova_and_posthoc.R) | Checks if genotypes truly differ (One-Way ANOVA) and ranks them (Duncan's Test); exports `.tiff` boxplots | `agricolae` |
| 3️⃣ | **Linear Regression** | [`03_linear_regression.R`](./03_linear_regression.R) | Predicts one trait from another; reports R² and residual diagnostics | `stats` `ggplot2` |
| 4️⃣ | **Clustering & PCA** | [`04_genotype_clustering_pca.R`](./04_genotype_clustering_pca.R) | Scales traits (Z-score), groups similar genotypes (K-Means, K = 3), visualizes with PCA biplots | `factoextra` `stats` |
| 5️⃣ | **Shiny Dashboard** | [`05_shiny_dashboard.R`](./05_shiny_dashboard.R) | A web app to filter and plot traits — no coding needed to explore | `shiny` `dplyr` `ggplot2` |

### ❓ The Question Each Step Answers

| Step | Question |
|:---:|---|
| 🔍 `01` | *What does my data look like?* |
| 📊 `02` | *Are the genotypes really different — and which ones are the best?* |
| 📈 `03` | *Can one trait predict another?* *(indirect selection)* |
| 🧬 `04` | *Which genotypes are alike — and which are diverse enough for crossing?* |
| 🖥️ `05` | *Can I explore the results without writing code?* |

---

## 🔁 Workflow Pipeline

```mermaid
graph LR
    A["📥 Raw Phenotype Data"] --> B["🔍 EDA"]
    B --> C["📊 ANOVA & Post-Hoc"]
    C --> D["📈 Linear Regression"]
    D --> E["🧬 K-Means & PCA"]
    E --> F["🖥️ Shiny Dashboard"]
```



---
## 📈 Project Results & Showcase

### 1️⃣ Exploratory Data Analysis

**Script:** [`01_exploratory_data_analysis.R`](./01_exploratory_data_analysis.R)

**Description:**
This module performs comprehensive exploratory analysis on plant phenotypic data across 100 genotypes. It includes summary statistics, correlation analysis, and visualization of trait distributions.

---

#### 📊 Results & Outputs

##### Summary Statistics

*Shows:* Mean, median, and standard deviation for all measured traits (Height, Width, Shoot Length, Root Length)

**CSV Data:** [Download Summary Table](./results/summary_stats.csv)

---

##### Correlation Matrix
![Correlation Analysis](./results/correlation_heatmap.png)

*Shows:* Relationships between different plant traits

**Key Findings:**
- Height and Width are strongly correlated (r = 0.85)
- Root Length shows moderate correlation with Shoot Length (r = 0.62)
- Leaf Colour classification affects overall plant dimensions

---

##### Trait Distribution
![Distribution Plots](./results/Frequency_Bar_Chart_(Leaf_Colour).png)

*Shows:* Histograms and density plots for all continuous traits

**Interpretation:**
- Height ranges from 15-85 cm with near-normal distribution
- Width and Shoot Length show similar patterns
- Root Length has slight left-skew

---

##### Scatter Plot Matrix
![Scatter Plots](./results/SL_vs_RL.png) 

*Shows:* Pairwise relationships between all traits

**Insights:**
- Clear positive relationships between growth traits
- Some genotypes show extreme phenotypes (outliers)
- No obvious non-linear patterns detected

---

#### 🔍 Key Insights from Project 1:

1. **Data Quality:** No missing values; all genotypes represented
2. **Trait Correlations:** Growth traits are interdependent
3. **Phenotypic Diversity:** Wide range across all measurements
4. **Next Steps:** This EDA forms the basis for ANOVA (Project 2) and clustering (Project 4)

---
---

<div align="center">

**Data → Code → Decision → Results**

*Repeat & Reproduce.*

</div>
