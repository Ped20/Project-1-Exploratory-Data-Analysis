library(readxl)
proj1 <- read_excel("C:/Users/prath/OneDrive/Desktop/proj1.xlsx", 
                    col_types = c("text", "numeric", "numeric", 
                                  "numeric", "numeric", "text"))
#Excel file named as "D" as Data for easement
D <- proj1
View(D)

# PROJECT 1: Exploratory Data Analysis (EDA)
# Goal: Calculate summary metrics, correlation, and visualize distributions

# 1. Load Libraries
library(readxl)
library(dplyr)
library(ggplot2)

# 2. Inspect structure
str(D)
head(D)

# 3. Overall Summary Statistics
summary <- summary(D)

print("--- OVERALL SUMMARY STATISTICS ---")
print(summary)
write.csv(summary,"summary_stats.csv",row.names =FALSE)

# 4. Leaf Colour Frequency Distribution
colour_count <- table(D$LC)
print("--- LEAF COLOUR COUNTS ---")
print(colour_count)

# 5. Correlation Matrix among Numeric Traits
numeric_col <- D[ , c(2:5)]
View(numeric_col)
cor_matrix <- cor(numeric_col)
print("--- CORRELATION MATRIX ---")
print(round(cor_matrix, 2))
write.csv(cor_matrix,"correlation matrix.csv")

#Create the plot
png("correlation_heatmap.png", width = 800, height = 600)
library(corrplot)
corrplot(cor_matrix,
         method = "color",
         type = "lower",
         tl.col = "black", # color of the labels
         tl.srt = 0,  # rotation of the text label to a certain degree
         col = colorRampPalette(c("#d73027", "white", "#1a9850"))(200),
         addCoef.col = "black",
         number.cex = 0.8,
         title = "Correlation Matrix Heatmap",
         mar = c(0, 0, 2, 0))
dev.off()

cat("heat map saved\n")

# 6. Visualizations

# Viz A: Frequency Bar Chart for Leaf Colour
p1<- ggplot(D, aes(x= LC, fill = LC))+
  geom_bar()+
  scale_fill_manual(values = c("Dark Green"  = "#1b7837",
                               "Green"       = "#7fbf7b",
                               "Light Green" = "#d9f0d3"))+
  labs(title = "Frequency of leaf colour group", x= ("leaf colour"), y= ("Genotype count"))+
  theme_minimal()
ggsave(filename = "Frequency Bar Chart (Leaf Colour).tiff", units = "in", height = 6, width = 8, dpi=300)
print(p1)

# Viz B: Scatter Plot (Shoot Length vs Root Length)
 p2 <- ggplot(D, aes(x= SL, y= RL, colour = LC))+
   geom_point(size= 0.7, alpha= 0.8)+
   labs(
     title = "Shoot Length vs. Root Length",
     x     = "Shoot Length (cm)",
     y     = "Root Length (cm)"
   ) +
   theme_bw()
 ggsave( filename= "SL vs RL.tiff", units= "in", height = 5, width = 6, dpi = 600)
 print(p2)
 
