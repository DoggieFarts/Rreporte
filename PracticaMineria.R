salarios <- read.csv("ds_salaries.csv")
options(scipen=999)
plot(salarios[,"work_year"], salarios[,"salary_in_usd"], main = "Relación entre el año en el que se trabaja y el salario recibido",
     xlab = "Año", ylab = "Salario percibido", xlim=c(2019,2023), ylim=c(10000,400000))
modelo <- lm(salarios[,"salary_in_usd"]~salarios[,"work_year"])
summary(modelo)
#Comparación de prediccion de trabajar en ciencia de datos en 2020 a 2023
work_2020<-data.frame(salarios[salarios$work_year == '2020,5'])
prediccion <-predict(modelo, newdata = work_2020)
prediccion
plot(salarios[,"work_year"], salarios[,"salary_in_usd"])
abline(modelo)

#####

datos <- data.frame("salarios"=salarios[,"salary_in_usd"],"anios"=salarios[,"work_year"])
plot(datos$anios,datos$salarios)
datos$xy <- datos$anios*datos$salarios
datos$x2 <- datos$anios*datos$anios
str(datos)
n=nrow(datos)
sx <- sum(datos$anios)
sy <- sum(datos$salarios)
sxy <- sum(datos$xy)
sx2 <- sum(datos$x2)
m<-(n*sxy-sx*sy)/(n*sx2-sx*sx)
b<-(sy*sx2-sx*sxy)/(n*sx2-sx*sx)
plot(datos$x,datos$y,lwd=2, col="red")
datos<-rbind(datos,0)
y1<-b+datos$x*m
lines(datos$x,y1,type="l",lwd=2,col="blue")





