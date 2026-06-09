library(ggplot2)
library(Rtsne)

df <- read.csv("BreastCancerWisconsin.csv")

features <- c("radius", "texture", "perimeter", "area", "smoothness", 
              "compactness", "concavity", "concave_points", "symmetry", 
              "fractal_dimension")

df_scaled <- scale(df[, features])

set.seed(9000)
tsne <- Rtsne(df_scaled, dims = 2, perplexity = 50, max_iter = 1000)

tsne_df <- data.frame(
  tSNE1     = tsne$Y[, 1],
  tSNE2     = tsne$Y[, 2], 
  Diagnosis = df$Diagnosis)

ggplot(tsne_df, aes(x = tSNE1, y = tSNE2, color = Diagnosis)) +
  geom_point(alpha = 0.7, size = 2) +
  scale_color_manual(values = c("#0073C2FF", "#EFC000FF"), 
                     labels = c("B" = "Benign", "M" = "Malignant"))
