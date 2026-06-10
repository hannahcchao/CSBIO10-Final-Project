# CSBIO10-Final-Project
Determining Most Impactful Characteristics for Breast Cancer Diagnosis

#### <ins>[FinalProjectProcessData.R](FinalProjectProcessData.R)</ins>
Contains the steps where the data was properly formatted and saved as a csv for downstream analysis

#### <ins>[FinalProjectAnalyzeData_PCA+EffectSizes.R](FinalProjectAnalyzeData_PCA+EffectSizes.R)</ins>
Contains the steps to create the PCA plot, violin plot comparing the distributions of the radii by diagnosis (with the p-value for the Wilcoxon test), and an effect size chart that compares the Cohen's d values of each dimension.

#### <ins>[tsne.R](tsne.R)</ins>
Contains steps to create the t-SNE plot, which shows clear clustering between benign and malignant tumors to prove that the recorded features can effectively help differentiate different tumor types.
