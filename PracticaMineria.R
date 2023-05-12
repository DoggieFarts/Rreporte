install.packages("stringr")
library("stringr")
options(scipen=999)
plot(salarios[,"work_year"], salarios[,"salary_in_usd"], main = "Relación entre el año en el que se trabaja y el salario recibido",
     xlab = "Año", ylab = "Salario percibido", xlim=c(2019,2023), ylim=c(10000,400000))
modelo <- lm(salarios[,"salary_in_usd"]~salarios[,"work_year"])
summary(modelo)
#Comparación de prediccion de trabajar en ciencia de datos en 2020 a 2023
work_2020<-data.frame(salarios[salarios$work_year == '2020.0'])
prediccion <-predict(modelo, newdata = work_2020)
prediccion
plot(salarios[,"work_year"], salarios[,"salary_in_usd"])
abline(modelo)



##### as.factor()
### relacion entre el nivel de experiencia, salario, tamaño de la empresa y el pais
### 

experiencia <- salarios$experience_level
experiencia
experienciaNueva <- list()

tamano <- salarios$company_size
tamano
tamanoNuevo <- list()

# Cambiar valores de exp a numeros
for (x in 1 : length(experiencia)) {
  if (str_detect(experiencia[[x]], "SE")) experienciaNueva[x] <- 1 #1 para SE
   if(str_detect(experiencia[[x]],"MI")) experienciaNueva[x] <- 2 #2 para MI
   if(str_detect(experiencia[[x]],"EN")) experienciaNueva[x] <- 3 #3 para EN
   if(str_detect(experiencia[[x]],"EX")) experienciaNueva[x] <- 4 #4 para EX
  
}

#Cambiar valores de tamaño de empresa a numeros
for (x in 1 : length(tamano)) {
  if (str_detect(tamano[[x]], "M")) tamanoNuevo[x] <- 2 #2 para mediano
  if(str_detect(tamano[[x]],"L")) tamanoNuevo[x] <- 3 #3 para grande
  if(str_detect(tamano[[x]],"S")) tamanoNuevo[x] <- 1 #1 para pequeño
}

paises <- list()




tamanoNuevo
experienciaNueva


