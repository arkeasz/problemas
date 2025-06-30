library(readxl)
library(car)

data <- read_xlsx("./ALUMINIO.xlsx")

data$A <- as.factor(data$A)
data$B <- as.factor(data$B)
data$C <- as.factor(data$C)
data$TIEMPO <- as.numeric(data$TIEMPO)
View(data)
data
model <- aov(TIEMPO ~ A * B * C, data = data)
summary(model)

resi <- residuals(model)
shapiro.test(resi)
leveneTest(TIEMPO ~ A*B*C, data = data, center=mean)
leveneTest(resi ~ A*B*C, data=data, center=mean)

plot(model)
TukeyHSD(model)
