install.packages("stringr")
library("stringr")
options(scipen=999)

##### as.factor()
### relacion entre el nivel de experiencia, salario, tamaño de la empresa y el pais
### 

experiencia <- salarios$experience_level
experiencia
experienciaNueva <- list()

tamano <- salarios$company_size
tamano
tamanoNuevo <- list()

lugar <- salarios$company_location
lugar
lugarNuevo <- list()

salarioUsd <- salarios$salary_in_usd
salarioUsd

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
#Cambiar valores de pais a números (ignorar comentarios en esta parte jaja)
for (x in 1 : length(lugar)) {
  if (str_detect(lugar[[x]], "US")) lugarNuevo[x] <- 1 #1 para SE
  if(str_detect(lugar[[x]],"GB")) lugarNuevo[x] <- 2 #2 para MI
  if(str_detect(lugar[[x]],"CA")) lugarNuevo[x] <- 3 #3 para EN
  if(str_detect(lugar[[x]],"ES")) lugarNuevo[x] <- 4 #4 para EX
  if (str_detect(lugar[[x]], "IN")) lugarNuevo[x] <- 5 #1 para SE
  if(str_detect(lugar[[x]],"DE")) lugarNuevo[x] <- 6 #2 para MI
  if(str_detect(lugar[[x]],"FR")) lugarNuevo[x] <- 7 #3 para EN
  if(str_detect(lugar[[x]],"BR")) lugarNuevo[x] <- 8 #4 para EX
  if (str_detect(lugar[[x]], "PT")) lugarNuevo[x] <- 9 #1 para SE
  if(str_detect(lugar[[x]],"AU")) lugarNuevo[x] <- 10 #2 para MI
  if(str_detect(lugar[[x]],"GR")) lugarNuevo[x] <- 11 #3 para EN
  if(str_detect(lugar[[x]],"NL")) lugarNuevo[x] <- 12 #4 para EX
  if (str_detect(lugar[[x]], "MX")) lugarNuevo[x] <- 13 #1 para SE
  if(str_detect(lugar[[x]],"IE")) lugarNuevo[x] <- 14 #2 para MI
  if(str_detect(lugar[[x]],"SG")) lugarNuevo[x] <- 15 #3 para EN
  if(str_detect(lugar[[x]],"JP")) lugarNuevo[x] <- 16 #4 para EX
  if (str_detect(lugar[[x]], "AT")) lugarNuevo[x] <- 17 #1 para SE
  if(str_detect(lugar[[x]],"PL")) lugarNuevo[x] <- 18 #2 para MI
  if(str_detect(lugar[[x]],"CH")) lugarNuevo[x] <- 19 #3 para EN
  if(str_detect(lugar[[x]],"NG")) lugarNuevo[x] <- 20 #4 para EX
  if (str_detect(lugar[[x]], "TR")) lugarNuevo[x] <- 21 #1 para SE
  if(str_detect(lugar[[x]],"LV")) lugarNuevo[x] <- 22 #2 para MI
  if(str_detect(lugar[[x]],"PR")) lugarNuevo[x] <- 23 #3 para EN
  if(str_detect(lugar[[x]],"IT")) lugarNuevo[x] <- 24 #4 para EX
  if (str_detect(lugar[[x]], "DK")) lugarNuevo[x] <- 25 #1 para SE
  if(str_detect(lugar[[x]],"SI")) lugarNuevo[x] <- 26 #2 para MI
  if(str_detect(lugar[[x]],"CO")) lugarNuevo[x] <- 27 #3 para EN
  if(str_detect(lugar[[x]],"BE")) lugarNuevo[x] <- 28 #4 para EX
  if (str_detect(lugar[[x]], "PK")) lugarNuevo[x] <- 29 #1 para SE
  if(str_detect(lugar[[x]],"UA")) lugarNuevo[x] <- 30 #2 para MI
  if(str_detect(lugar[[x]],"AR")) lugarNuevo[x] <- 31 #3 para EN ME QUEDE AQUI
  if(str_detect(lugar[[x]],"LU")) lugarNuevo[x] <- 32 #4 para EX
  if (str_detect(lugar[[x]], "AS")) lugarNuevo[x] <- 33 #1 para SE
  if(str_detect(lugar[[x]],"CZ")) lugarNuevo[x] <- 34 #2 para MI
  if(str_detect(lugar[[x]],"TH")) lugarNuevo[x] <- 35 #3 para EN
  if(str_detect(lugar[[x]],"FI")) lugarNuevo[x] <- 36 #4 para EX
  if (str_detect(lugar[[x]], "RU")) lugarNuevo[x] <- 37 #1 para SE
  if(str_detect(lugar[[x]],"HR")) lugarNuevo[x] <- 38 #2 para MI
  if(str_detect(lugar[[x]],"AE")) lugarNuevo[x] <- 39 #3 para EN
  if(str_detect(lugar[[x]],"LT")) lugarNuevo[x] <- 40 #4 para EX
  if (str_detect(lugar[[x]], "GH")) lugarNuevo[x] <- 41 #1 para SE
  if(str_detect(lugar[[x]],"IL")) lugarNuevo[x] <- 42 #2 para MI
  if(str_detect(lugar[[x]],"RO")) lugarNuevo[x] <- 43 #3 para EN
  if(str_detect(lugar[[x]],"KE")) lugarNuevo[x] <- 44 #4 para EX
  if (str_detect(lugar[[x]], "EE")) lugarNuevo[x] <- 45 #1 para SE
  if(str_detect(lugar[[x]],"CF")) lugarNuevo[x] <- 46 #2 para MI
  if(str_detect(lugar[[x]],"SE")) lugarNuevo[x] <- 47 #3 para EN
  if(str_detect(lugar[[x]],"HU")) lugarNuevo[x] <- 48 #4 para EX
  if (str_detect(lugar[[x]], "ID")) lugarNuevo[x] <- 49 #1 para SE
  if(str_detect(lugar[[x]],"BS")) lugarNuevo[x] <- 50 #2 para MI
  if(str_detect(lugar[[x]],"MK")) lugarNuevo[x] <- 51 #3 para EN
  if(str_detect(lugar[[x]],"HN")) lugarNuevo[x] <- 52 #4 para EX
  if (str_detect(lugar[[x]], "MT")) lugarNuevo[x] <- 53 #1 para SE
  if(str_detect(lugar[[x]],"AM")) lugarNuevo[x] <- 54 #2 para MI
  if(str_detect(lugar[[x]],"AL")) lugarNuevo[x] <- 55 #3 para EN
  if(str_detect(lugar[[x]],"SK")) lugarNuevo[x] <- 56 #4 para EX
  if (str_detect(lugar[[x]], "MY")) lugarNuevo[x] <- 57 #1 para SE
  if(str_detect(lugar[[x]],"MD")) lugarNuevo[x] <- 58 #2 para MI
  if(str_detect(lugar[[x]],"DZ")) lugarNuevo[x] <- 59 #3 para EN
  if(str_detect(lugar[[x]],"IR")) lugarNuevo[x] <- 60 #4 para EX
  if (str_detect(lugar[[x]], "BO")) lugarNuevo[x] <- 61 #1 para SE
  if(str_detect(lugar[[x]],"CR")) lugarNuevo[x] <- 62 #2 para MI
  if(str_detect(lugar[[x]],"NZ")) lugarNuevo[x] <- 63 #3 para EN
  if(str_detect(lugar[[x]],"BA")) lugarNuevo[x] <- 64 #4 para EX
  if (str_detect(lugar[[x]], "PH")) lugarNuevo[x] <- 65 #1 para SE
  if(str_detect(lugar[[x]],"HK")) lugarNuevo[x] <- 66 #2 para MI
  if(str_detect(lugar[[x]],"EG")) lugarNuevo[x] <- 67 #3 para EN
  if(str_detect(lugar[[x]],"MA")) lugarNuevo[x] <- 68 #4 para EX
  if (str_detect(lugar[[x]], "CL")) lugarNuevo[x] <- 69 #1 para SE
  if(str_detect(lugar[[x]],"VN")) lugarNuevo[x] <- 70 #2 para MI
  if(str_detect(lugar[[x]],"CN")) lugarNuevo[x] <- 71 #3 para EN
  if(str_detect(lugar[[x]],"IQ")) lugarNuevo[x] <- 72 #4 para EX
}

experienciaNueva <- as.numeric(experienciaNueva)
tamanoNuevo <- as.numeric(tamanoNuevo)
lugarNuevo <- as.numeric(lugarNuevo)
modeloLineal <- lm(salarioUsd~experienciaNueva+tamanoNuevo+lugarNuevo)
summary(modeloLineal)

prediccion <- predict(modeloLineal)
prediccion
plot(modeloLineal)


