# created additional violin plots for the other most important features (concavity and perimeter)
#install.packages("ggpubr")
library(ggpubr)
diagnosis_colors <- c("B" = "#0073C2FF", 
                "M" = "#EFC000FF")

perimeter_violin_plot <- ggplot(data, aes(x = Diagnosis, y = perimeter, fill = Diagnosis)) +
                        geom_violin(alpha = 0.5, trim = FALSE) + #alpha was decided by us to match transparency with other plots
                        geom_boxplot(width = 0.1, fill = "white",
                                      outlier.shape = NA,
                                      alpha = 0.4) +
                        theme_classic() + 
                        labs(title = "Perimeter is Predictive of Diagnosis", x = "Diagnosis", y = "Perimeter") +
                        scale_fill_manual(values = diagnosis_colors) + 
                        stat_compare_means(comparisons = list(c("B", "M")), label = "p.value", method = "wilcox.test") 

ggsave("perimeter_violin_plot.png", plot = perimeter_violin_plot)

concavity_violin_plot <- ggplot(data, aes(x = Diagnosis, y = concavity, fill = Diagnosis)) +
                          geom_violin(alpha = 0.5, trim = FALSE) +
                          geom_boxplot(width = 0.1, fill = "white",
                                       outlier.shape = NA,
                                       alpha = 0.4) +
                          theme_classic() + 
                          labs(title = "Concavity is Predictive of Diagnosis", x = "Diagnosis", y = "Concavity") +
                          scale_fill_manual(values = diagnosis_colors) + 
                          stat_compare_means(comparisons = list(c("B", "M")), label = "p.value", method = "wilcox.test")

ggsave("concavity_violin_plot.png", plot = concavity_violin_plot)
