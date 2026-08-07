 🌾 Plant Genotype Phenotypic Analysis in R

A structured multi-project workflow demonstrating computational
plant biology analysis using R. This repository ranges from
Exploratory Data Analysis (EDA) to Machine Learning clustering
and interactive web application deployment.

---

## 📊 Dataset Overview

The analysis utilizes phenotypic evaluations collected across
**100 plant genotypes** (`G001` to `G100`).

### Recorded Variables:
* **`Genotype`**: Genotypic identification code.
* **`Height_cm`**: Total plant height (cm).
* **`Width_cm`**: Canopy width measurement (cm).
* **`Leaf_Colour`**: Visual categorical classification
  (*Light Green, Green, Dark Green*).
* **`Shoot_Length_cm`**: Above-ground shoot elongation (cm).
* **`Root_Length_cm`**: Primary root system depth (cm).

---

## 🗂️ Project Structure & Modules

### 1. Exploratory Data Analysis
(`01_exploratory_data_analysis.R`)
* Summary statistics, correlations, bar charts, scatter plots.
* Tools: `readxl`, `dplyr`, `ggplot2`.

### 2. Group Comparisons & Post-Hoc Analysis
(`02_anova_and_posthoc.R`)
* One-Way ANOVA & Duncan's Test.
* Publication-ready `.tiff` boxplots.
* Tools: `agricolae`.

### 3. Predictive Trait Modeling
(`03_linear_regression.R`)
* Simple & Multiple Linear Regression.
* R-squared metrics and residual diagnostics.

### 4. Unsupervised Clustering & PCA
(`04_genotype_clustering_pca.R`)
* Z-score normalization, K-Means (K=3), PCA biplots.
* Tools: `factoextra`.

### 5. Interactive Shiny Dashboard
(`05_shiny_dashboard.R`)
* Dynamic web interface for trait filtering and plotting.
* Tools: `shiny`.

---

## 🚀 Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/Ped20/plant-trait-analysis-r.git