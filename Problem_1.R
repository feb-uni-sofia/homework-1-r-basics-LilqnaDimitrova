## NOTE: always leave space before and after <-, -, +, *, /. Leave a blank after commas. Leave blanks around 
## <, >, ==, <=, =>, etc.

########Problem 1#########
#a)
x<-c(4,1,1,4)

#b)
y<-c(1,4)

#c)
x-y
# We have two vectors of different size.The smaller vector becomes c(1,4,1,4).That's why the result looks like this.

#d)
s<-c(x,y)

#e)
rep(s,10)
srep<-rep(s,10)
length(srep)

#f)
rep(s,each=10)

#g)
seq(7,21,by=1)

7:21

#h)lseq<-seq(7,21,by=1)
length(lseq)

