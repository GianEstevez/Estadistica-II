load(url('https://www.dropbox.com/s/yzyqmq1bwsito0w/saber_pro.RData?dl=1'))
str(saber_pro)
print(saber_pro2)
mean(saber_pro$RC)
median(saber_pro$RC)

saber_pro2<-data.frame(saber_pro)

saber_pro2$PG<-rowMeans(saber_pro2[,5:9])
saber_pro2$PG2<-rowSums(saber_pro2[,5:9])


rowMeans(saber_pro)

#
summary(saber_pro2)

typeof(saber_pro2)

hist(saber_pro$GENERO)

ggplot2

#Media = 150, Desviación std = 30 FUN reescale

aggregate(PG~PERIODO,data = saber_pro2, FUN = mean)


#Histograma por año
hist(saber_pro2[saber_pro2$PERIODO == '2018', 'PG'])



aggregate(PG~PERIODO,data = saber_pro2, FUN = max)



#Histograma
barplot(with(saber_pro2, table(GENERO)))



install.packages('ggplot2')

colMax <- function(saber_pro2) sapply(saber_pro2, max, na.rm = TRUE)


#Filtrado por año
subset(saber_pro2, PERIODO=='2014' )
