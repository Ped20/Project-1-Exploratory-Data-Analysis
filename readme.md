<div align="center">

# 🌾 Plant Genotype Phenotypic Analysis in R

> A structured multi-project workflow demonstrating computational plant biology analysis using **R**.  
> This repository ranges from **Exploratory Data Analysis (EDA)** to **Machine Learning clustering** and **interactive web application deployment**.

[![R](https://img.shields.io/badge/R-4.3+-276DC3?style=for-the-badge&logo=r&logoColor=white)](https://www.r-project.org/)
[![Markdown](https://img.shields.io/badge/Markdown-1.0-000000?style=for-the-badge&logo=markdown&logoColor=white)](https://daringfireball.net/projects/markdown/)
[![Shiny](https://img.shields.io/badge/Shiny-1.7+64BD60?style=for-the-badge&logo=r&logoColor=white)](https://shiny.rstudio.com/)

</div>

---

## 📊 Dataset Overview

The analysis utilizes phenotypic evaluations collected across **100 plant genotypes** (`G001` to `G100`).

### 📋 Recorded Variables

| Variable | Description |
|----------|-------------|
| `Genotype` | Genotypic identification code |
| `Height_cm` | Total plant height (cm) |
| `Width_cm` | Canopy width measurement (cm) |
| `Leaf_Colour` | Visual categorical classification (*Light Green, Green, Dark Green*) |
| `Shoot_Length_cm` | Above-ground shoot elongation (cm) |
| `Root_Length_cm` | Primary root system depth (cm) |

---

## 🗂️ Project Structure & Modules

### 1️⃣ Exploratory Data Analysis
> **Script:** `01_exploratory_data_analysis.R`  
- Summary statistics, correlations, bar charts, scatter plots  
- 📦 **Tools:** `readxl`, `dplyr`, `ggplot2`

### 2️⃣ Group Comparisons & Post-Hoc Analysis
> **Script:** `02_anova_and_posthoc.R`  
- One-Way ANOVA & Duncan's Test  
- Publication-ready `.tiff` boxplots  
- 📦 **Tools:** `agricolae`

### 3️⃣ Predictive Trait Modeling
> **Script:** `03_linear_regression.R`  
- Simple & Multiple Linear Regression  
- R-squared metrics and residual diagnostics  
- 📦 **Tools:** `stats`, `ggplot2`

### 4️⃣ Unsupervised Clustering & PCA
> **Script:** `04_genotype_clustering_pca.R`  
- Z-score normalization, K-Means (K=3), PCA biplots  
- 📦 **Tools:** `factoextra`, `stats`

### 5️⃣ Interactive Shiny Dashboard
> **Script:** `05_shiny_dashboard.R`  
- Dynamic web interface for trait filtering and plotting  
- 📦 **Tools:** `shiny`, `dplyr`, `ggplot2`

---

## 🚀 Getting Started

### 1. Clone this repository
```bash
git clone https://github.com/Ped20/plant-trait-analysis-r.git
cd plant-trait-analysis-r
