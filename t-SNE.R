library(ggplot2)
library(Rtsne)

df <- read.csv("BreastCancerWisconsin.csv")

features <- c("radius", "texture", "perimeter", "area", "smoothness", 
              "compactness", "concavity", "concave_points", "symmetry", 
              "fractal_dimension")

# Scale features to each other
df_scaled <- scale(df[, features])

# Run t-SNE to compress/reduce features to 2 dimensions
set.seed(9000)
tsne <- Rtsne(df_scaled, dims = 2, perplexity = 50, max_iter = 1000)

# Initialize dataframe, map the reduced dimensions
tsne_df <- data.frame(
  tSNE1     = tsne$Y[, 1],
  tSNE2     = tsne$Y[, 2], 
  Diagnosis = df$Diagnosis)

# Create scatter plot using t-SNE data in 2D
ggplot(tsne_df, aes(x = tSNE1, y = tSNE2, color = Diagnosis)) +
  geom_point(alpha = 0.7, size = 2) +
  scale_color_manual(values = c("#0073C2FF", "#EFC000FF"), 
                     labels = c("B" = "Benign", "M" = "Malignant"))
