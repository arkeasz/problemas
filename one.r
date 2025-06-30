# HIPOTESIS
# H0: a1 = a2 = 0
# H1: a1 != a2, o no todas las a son cero
# H0: b1 = b2 = 0
# H1: b1 != b2, o no todas las a son cero
# H0: (ab)11 = (ab)12 = (ab)21 = (ab)22 = 0
# H1: (ab)11 != (ab)12 != (ab)21 != (ab)2, o no todas las (ab) son cero

# Supuestos
# install.packages("readxl")
library(readxl)

data <- read_xlsx("./NOTAS.xlsx")

data$FACTOR_A <- as.factor(data$FACTOR_A)
data$FACTOR_B <- as.factor(data$FACTOR_B)
data$NOTA <- as.numeric(data$NOTA)
# (data)
data
# model <- aov(NOTA ~ FACTOR_A * FACTOR_B, data = data)
# summary(model)
# Con unos 