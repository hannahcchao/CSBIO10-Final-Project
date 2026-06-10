#redoing the PCA 
#remove non-numerical columns for pca purposes
rownames(data) <- data$ID
numerical_data <- data[, 3:32]
numerical_data

