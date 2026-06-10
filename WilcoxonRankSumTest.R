#code to do wilcoxon rank sum test on all of the mean features
#would be better to automate this, but I did it one at a time

# load wbcd dataset
library("ggplot2")
data <- read.csv("/Users/avaniathavale/UCLA/CS_BIO_10/Final/BreastCancerWisconsin.csv")
wilcox.test(perimeter ~ Diagnosis, data = data)
wilcox.test(radius ~ Diagnosis, data = data)
wilcox.test(texture ~ Diagnosis, data = data)
wilcox.test(area ~ Diagnosis, data = data)
wilcox.test(smoothness ~ Diagnosis, data = data)
wilcox.test(compactness ~ Diagnosis, data = data)
wilcox.test(concavity ~ Diagnosis, data = data)
wilcox.test(concave_points ~ Diagnosis, data = data)
wilcox.test(symmetry ~ Diagnosis, data = data)
wilcox.test(fractal_dimension ~ Diagnosis, data = data)

