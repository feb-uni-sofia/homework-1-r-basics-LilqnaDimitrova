## NOTE: always leave space before and after <-, -, +, *, /. Leave a blank after commas. Leave blanks around 
## <, >, ==, <=, =>, etc.

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
## NOTE: not DRY (don't repeat yourself). Assign the dates to a vector and
## then use that vector to assign names to the elements of xmin and xmax

names(xmin)<-c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
names(xmax)<-c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')

#g)
temperatures<-data.frame(xmin,xmax)

#h)
## NOTE: improve readability

temperatures<-within(temperatures, {
	xminFahrenheit<-xmin*9/5+32
})

#i)
## ERROR: the following is invalid!
## What is does is assign the data.frame _function_ to a variable called 'ftemp'
## There is a difference between the _function_ and the result of a function call.

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

## Better:

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

## Easier to subset the whole data.frame instead of 
## doing this for each vector used in its construction

temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]
