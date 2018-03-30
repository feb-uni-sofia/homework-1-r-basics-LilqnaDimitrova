########Problem 2###########


#a)
xmin<-c(23.0,20.5,28.2,20.3,22.4,17.2,18.2)
xmax<-c(25.0,22.8,31.2,27.3,28.4,20.2,24.1)

#b)
drd<-xmax-xmin

#c)
avgmin<-mean(xmin)
avgmax<-mean(xmax)

#d)
xmin[xmin<avgmin]

#e)
xmin[xmax>avgmax]

#f)
names(xmin)<-c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
names(xmax)<-c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')

#g)
temperatures<-data.frame(xmin,xmax)

#h)
temperatures<-within(temperatures,{xminFahrenheit<-xmin*9/5+32})

#i)
ftemp<-data.frame
  (MaxTempFahrenheit=(xmax*9/5+32),
  MinTempFahrenheit=(xmin*9/5+32))

#j)
#1)
MonFri_TempFahrenheit<-data.frame(
MaxTempFahrenheit=xmax[seq(1:5)]*9/5+32,
MinTempFahrenheit=xmin[seq(1:5)]*9/5+32)

#2)
MonFri_TempFahrenheit<-data.frame(
MaxTempFahrenheit=xmax[seq(length(xmax)-2)]*9/5+32,
MinTempFahrenheit=xmin[seq(length(xmin)-2)]*9/5+32)



