#redoing the PCA 
#remove non-numerical columns for pca purposes
rownames(data) <- data$ID
numerical_data <- data[, 3:32]
pca_matrix <- prcomp(numerical_data, scale = T)
df <- data.frame(pca_matrix$x)
df$diagnosis <- data$Diagnosis
ggplot(df, aes(PC1, PC2, col = diagnosis)) + geom_point() + theme_classic()
#create elbow plot to show how many PCs to use
plot(pca_matrix$sdev)
#creating umaps from the first 20 PCs
#install.packages("umap")
library(umap)
umap_data <- umap(pca_matrix$x[, 1:15])
df$umap_1 <- umap_data$layout[, 1]
df$umap_2 <-umap_data$layout[, 2]
diagnosis_colors <- c("B" = "#0073C2FF", 
                "M" = "#EFC000FF")
umap_plot <- ggplot(df, aes(umap_1, umap_2, col = diagnosis)) + geom_point() + theme_classic() + scale_color_manual(values = diagnosis_colors)

ggsave("umap_b_vs_m.png", plot = umap_plot)

