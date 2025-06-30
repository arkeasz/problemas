library(readxl)
library(xts)
library(zoo)
library(PerformanceAnalytics)

data <- read_xlsx("./REACTIVOS.xlsx")

data$A <- as.factor(data$A)
data$B <- as.factor(data$B)
data$NOTA <- as.numeric(data$NOTA)
# (data)
data
model <- aov(NOTA ~ A * B, data = data)
summary(model)
plot(model)

# # Con unos 

TukeyHSD(model, "A")
TukeyHSD(model, "B")
