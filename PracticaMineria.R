options(scipen=999)
plot(salarios[,"work_year"], salarios[,"salary"], main = "Relación entre el año en el que se trabaja y el salario recibido",
     xlab = "Año", ylab = "Salario percibido", xlim=c(2019,2023), ylim=c(10000,400000))
modelo <- lm(salarios[,"salary"]~salarios[,"work_year"])
summary(modelo)
#Comparación de prediccion de trabajar en ciencia de datos en 2020 a 2023
work_2020<-data.frame(salarios[salarios$work_year == '2020,5'])
prediccion <-predict(modelo, newdata = work_2020)
prediccion
plot(salarios[,"work_year"], salarios[,"salary"])
abline(modelo)

#####
