mystring<-'hello'
print(mystring)
v1=c(10,20,30,40,50,60,70)
print(class(v1))
cat("Length of the number",length(v1))
cat("Sequence numver",seq(v1))
cat("Range of vector v1"=3:5)
a=c("hello"="3","hi"="7")
print(a)
pos<-readline(prompt = "enter the position of the vector to view the element")
pos<-as.integer(pos)
cat("the element is",v1[pos])
pos1=readline(prompt="enter the start  position")
pos2=readline(prompt="enter the end position")
cat("the range of the element are:",v1[pos1:pos2])
cat("removing an element from the vector",v1[-1])
cat("removing a range of element from the vector",v1[-1:-3])
cat("removing the last element from the vector",v1[1:length(v1)-1])
cat("sorting of asending order vector",sort(v1))
cat("sorting of decending order vector", sort(v1,decreasing=TRUE))
min.result=min(v1)
cat("minimun of element",min(v1))
max.result=max(v1)
cat("minimun of element",max(v1))
median.result=median(v1)
cat("median of element",median(v1))
var.result=var(v1)
cat("variance of element",var(v1))
sd.result=sd(v1)
cat("sd of element",sd(v1))

cat("difference between two vector")
s<-c(50,60,70,80)
c<-c(40,70,80,90)
setdiff(s,c)

cat("calculating the basic arithmetic operation")
v1<-c(3,8,4,5,0,11)
v2<-c(4,11,0,8,1,2)
cat("Additon of two numbers")
add.result<-v1+v2
print(add.result)

cat("Substraction of two numbers")
sub.result=v1-v2
print(sub.result)

cat("Multiplication of two numbers")
mul.result=v1*v2
print(mul.result)

cat("Division of two numbers")
div.result<-v1/v2
print(div.result)

cat("modulusof two numbers")
mod.result<-v1%%v2
print(mod.result)

cat("modulusof two numbers")
exp.result<-v1^v2
print(v1^v2)

cat("Less then of two number")
les.result<-v1<v2
print(les.result)

cat("Greater then of two number")
gr.result<-v1>v2
print(gr.result)








