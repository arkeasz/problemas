# Práctica Diseño Factorial
###### 2025-A
###### Antonio Rafael Arias Romero
### Se pretende estudiar la eficacia de dos métodos de  enseñanza (presencial y a distancia) sobre el aprendizaje  de dos materias (matemáticas e historia). Se forman  aleatoriamente cuatro grupos y cada uno seguirá uno de  los cuatro cursos resultantes de combinar las dos  variables independientes. La variable dependiente de  esta investigación será la puntuación obtenida por cada estudiante en un examen que realizarán al finalizar el curso.

- Matemáticas: $a_1$
- Historia: $a_2$
- Distancia: $b_1$
- Presencial $b_2$

![alt text](image.png)

#### HIPOTESIS
- H0: a1 = a2 = 0
- H1: a1 != a2, o no todas las a son cero
- H0: b1 = b2 = 0
- H1: b1 != b2, o no todas las a son cero
- H0: (ab)11 = (ab)12 = (ab)21 = (ab)22 = 0
- H1: (ab)11 != (ab)12 != (ab)21 != (ab)2, o no todas las (ab) son cero

Comenzamos leyendo la data de la tabla en excel
```r
library(readxl)

data <- read_xlsx("./NOTAS.xlsx")

data$FACTOR_A <- as.factor(data$FACTOR_A)
data$FACTOR_B <- as.factor(data$FACTOR_B)
data$NOTA <- as.numeric(data$NOTA)
View(data)
```
Observando de manera más clara la tabla formateada en excel
```
# Salida
> data
# A tibble: 32 × 3
   FACTOR_A   FACTOR_B    NOTA
   <fct>      <fct>      <dbl>
 1 MATEMATICA DISTANCIA     10
 2 MATEMATICA DISTANCIA      9
 3 MATEMATICA DISTANCIA      4
 4 MATEMATICA DISTANCIA      8
 5 MATEMATICA DISTANCIA      8
 6 MATEMATICA DISTANCIA      4
 7 MATEMATICA DISTANCIA      3
 8 MATEMATICA DISTANCIA      6
 9 MATEMATICA PRESENCIAL     4
10 MATEMATICA PRESENCIAL     3
# ℹ 22 more rows
# ℹ Use `print(n = ...)` to see more rows
```
```r
model <- aov(NOTA ~ FACTOR_A * FACTOR_B, data = data)
summary(model)
```
```
# Salida
> summary(model)
                  Df Sum Sq Mean Sq F value   Pr(>F)    
FACTOR_A           1  81.28   81.28  29.414 8.73e-06 ***
FACTOR_B           1  38.28   38.28  13.853 0.000881 ***
FACTOR_A:FACTOR_B  1   7.03    7.03   2.544 0.121911
Residuals         28  77.37    2.76
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```

### Se pretende estudiar el efecto de la concentración del reactivo y de la cantidad del catalizador sobre el rendimiento de un proceso químico. La concentración del reactivo presenta 2 niveles de interés15% y 25%. El catalizador presenta un nivel alto denotado por el uso de 2 libras del catalizador y un nivel bajo donde se uso 1libra de catalizador. Se hace 3 réplicas del experimento y los datos son los siguientes.

![alt text](image-1.png)


### En el proceso de fabricación  de latas de aluminio para bebidas intervienen muchos factores. A continuación se muestran tres de ellos con sus niveles seleccionados. Se desea determinar el efecto que pudieran tener en cuanto al tiempo entre reventones (variable respuesta en horas) de la hoja del aluminio durante la primera operación del proceso. 
- A: Aceite de lubricacón de la lámina (z1, z2)
- B: Aceite de formación (H1, H2)
- C: Concentración de agua/aceite(10, 20 %)
- Se corrieron dos replicas para cada prueba y los resultados se muestran en la tabla
- ¿Qué factores influyen sobre el centrado del proceso? 
![alt text](image-2.png)