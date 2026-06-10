# CSBIO10-Final-Project
Determining Most Impactful Characteristics for Breast Cancer Diagnosis

#### <ins>[FinalProjectProcessData.R](FinalProjectProcessData.R)</ins>
Contains the steps where the data was properly formatted and saved as a csv for downstream analysis

#### <ins>[PCA_ConcavePointsViolinPlot_EffectSizes.R](PCA_ConcavePointsViolinPlot_EffectSizes.R)</ins>
Contains the steps to create the PCA plot, violin plot comparing the distributions of the concave points by diagnosis (with the p-value for the Wilcoxon test), and an effect size chart that compares the Cohen's d values of each dimension.

#### <ins>[tsne.R](tsne.R)</ins>
Contains steps to create the t-SNE plot, which shows clear clustering between benign and malignant tumors to prove that the recorded features can effectively help differentiate different tumor types.

#### <ins>[PCAtoUMAP.R](PCAtoUMAP.R)</ins>
Contains stepps to create the UMAPs, which shows clear clustering between benign and malignant tumors, showing that the features differentiate tumor types. Performed this method in order to compare if there is any visible difference in different visualization techniques. 

#### <ins>[FractalDimension_violinplot.R](FractalDimension_violinplot.R)</ins>
Contains steps to create the violin plot depicting fractal dimension across each tumor type. It displays that fractal dimension is not an effective indicator of benign versus malignant tumors.


