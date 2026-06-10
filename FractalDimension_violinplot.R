## Fractal Dimension Violin Plot generation - findings: fractal dimension is not a significant indicator of malignant versus benign tumors
data <- read.csv('~/Downloads/BreastCancerWisconsin.csv')
library(ggplot2)
library(ggpubr)

ggplot(data, aes(x = Diagnosis, y = fractal_dimension, fill = Diagnosis)) +
  geom_violin(alpha = 0.5) +
  scale_fill_manual(values = c("#0073C2FF", "#EFC000FF")) +
  geom_boxplot(width = 0.10, outlier.shape = NA, color = "black", fill = "white", alpha = 0.4) +
  labs(title = "Not Predictive: Fractal Dimension", x = "Diagnosis", y = "Fractal Dimension") + theme_classic() +
  stat_compare_means(comparisons = list(c("B", "M")), label = "p.value", method = "wilcox.test")
