col_names <- c("ID", "Diagnosis", "radius", "texture",
               "perimeter", "area", "smoothness", "compactness",
               "concavity", "concave_points", "symmetry",
               "fractal_dimension", "radius_standard_error", "texture_standard_error",
               "perimeter_standard_error", "area_standard_error", "smoothness_standard_error", "compactness_standard_error", "concavity_standard_error",
               "concave_points_standard_error", "symmetry_standard_error", "fractal_dimension_standard_error",
               "radius_worst", "texture_worst", "perimeter_worst", "area_worst", "smoothness_worst", 
               "compactness_worst", "concavity_worst", "concave_points_worst", "symmetry_worst", "fractal_dimension_worst")

tumor_df <- read.csv("wdbc.data", header = FALSE, col.names = col_names)

write.csv(tumor_df, "BreastCancerWisconsin.csv", row.names = FALSE)

info <- readLines("wdbc.names")

readLines("wdbc.names")
