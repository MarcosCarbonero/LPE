library(readxl)
library(tidyverse)
library(datasets)
#### Libreia Grafica  ####
library(ggplot2)
data<- read_excel("C:/Users/Marcos/Downloads/EMPRESA DE VENTAS.xlsx")
data<-data.frame(data)
names(data)
head(data)
str(data)
#y nos quedamos con las operaciones cuyo a�o de cierre esta por debajo de 2025
data<-filter(data,A�o_cierre<2026)
#Ahora vemos desde que a�o a que a�o son nuestros registros 
min(data$Fecaha_cierre)
max(data$Fecah_cierre)
####VISUALIZACIONES PREVIAS####
## vemos son los comerciales que mas ofertas hacen
ggplot(data,aes(x=AM))+geom_bar()+coord_flip()
## vemos la distribuci�n de los estados de las ofertas
ggplot(data,aes(x=Estado))+geom_bar()+coord_flip()
## Vemos el estado de las ofertas por cada comercial
ggplot(data,aes(x=AM))+geom_bar(aes(fill=Estado),position="dodge")+coord_flip()
####APLICAMOS FILROS PARA SACAR INFORMACI�N MAS DETALLADA POR CADA A�O#### 
####A�O2016####
data2016<-filter(data,A�o_cierre==2016)
data2016<-data.frame(data2016)
ggplot(data2016,aes(x=Estado))+geom_bar()+coord_flip()
#Vemos la Proporci�n de logradas y perdidas por mes  
ggplot(data2016,aes(x=Mes_cierre))+geom_bar(aes(fill=Estado),position="dodge")+coord_flip()
#Vemos el comportamiento de los comerciales esta a�o   
ggplot(data2016,aes(x=AM))+geom_bar(aes(fill=Estado),position="dodge")+coord_flip()
#Vemos el comportamiento de las ventas por mes
ggplot(data2016,aes(x=Mes_cierre))+geom_bar(aes(fill=AM),position="dodge")+coord_flip()
####A�O2017####
data2017<-filter(data,A�o_cierre==2017)
data2017<-data.frame(data2017)
ggplot(data2017,aes(x=Estado))+geom_bar()+coord_flip()
#Vemos la Proporci�n de logradas y perdidas por mes  
ggplot(data2017,aes(x=Mes_cierre))+geom_bar(aes(fill=Estado),position="dodge")+coord_flip()
#Vemos el comportamiento de los comerciales esta a�o   
ggplot(data2017,aes(x=AM))+geom_bar(aes(fill=Estado),position="dodge")+coord_flip()
#Vemos el comportamiento de las ventas por mes
ggplot(data2017,aes(x=Mes_cierre))+geom_bar(aes(fill=AM),position="dodge")+coord_flip()
####A�O2018####
data2018<-filter(data,A�o_cierre==2018)
data2018<-data.frame(data2018)
ggplot(data2018,aes(x=Estado))+geom_bar()+coord_flip()
#Vemos la Proporci�n de logradas y perdidas por mes  
ggplot(data2018,aes(x=Mes_cierre))+geom_bar(aes(fill=Estado),position="dodge")+coord_flip()
#Vemos el comportamiento de los comerciales esta a�o   
ggplot(data2018,aes(x=AM))+geom_bar(aes(fill=Estado),position="dodge")+coord_flip()
#Vemos el comportamiento de las ventas por mes
ggplot(data2018,aes(x=Mes_cierre))+geom_bar(aes(fill=AM),position="dodge")+coord_flip()
####A�O2019####
data2019<-filter(data,A�o_cierre==2019)
data2019<-data.frame(data2019)
ggplot(data2019,aes(x=Estado))+geom_bar()+coord_flip()
#Vemos la Proporci�n de logradas y perdidas por mes  
ggplot(data2019,aes(x=Mes_cierre))+geom_bar(aes(fill=Estado),position="dodge")+coord_flip()
#Vemos el comportamiento de los comerciales esta a�o   
ggplot(data2019,aes(x=AM))+geom_bar(aes(fill=Estado),position="dodge")+coord_flip()
#Vemos el comportamiento de las ventas por mes
ggplot(data2019,aes(x=Mes_cierre))+geom_bar(aes(fill=AM),position="dodge")+coord_flip()
####A�O2020####
data2020<-filTer(data,A�o_cierre==2020)
data2020<-data.frame(data2020)
ggplot(data2020,aes(x=Estado))+geom_bar()+coord_flip()
#Vemos la Proporci�n de logradas y perdidas por mes  
ggplot(data2020,aes(x=Mes_cierre))+geom_bar(aes(fill=Estado),position="dodge")+coord_flip()
#Vemos el comportamiento de los comerciales esta a�o   
ggplot(data2020,aes(x=AM))+geom_bar(aes(fill=Estado),position="dodge")+coord_flip()
#Vemos el comportamiento de las ventas por mes
ggplot(data2020,aes(x=Mes_cierre))+geom_bar(aes(fill=AM),position="dodge")+coord_flip()