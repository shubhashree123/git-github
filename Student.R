student<-setClass("student", slots=list(no="numeric",name="character",m1="numeric",m2="numeric"))
cat("\n Class Defination:\n")
print(getClass("student"))
#Method Defination
setGeneric(name="setDetails",def=function(obj,a,b,c,d)
{
  standardGeneric("setDetails")
}
)
setMethod(f="setDetails",signature = "student",definition = function(obj,a,b,c,d)
{
  obj@no<-a
  obj@name<-b
  obj@m1<-c
  obj@m2<-d
  return(obj)
})
setGeneric(name="getDetails",def=function(obj)
{
  standardGeneric("getDetails")
})
setMethod(f="getDetails",signature = "student",definition = function(obj)
{
  cat("\n Register No=",obj@no)
  cat("\n Name=",obj@name)
  cat("\n mark1=",obj@m1)
  cat("\n mark2=",obj@m2)
  calculate(obj)
}
)

setGeneric(name="calculate",def=function(obj)
{
  standardGeneric("calculate")
})
setMethod(f="calculate",signature = "student",definition = function(obj)
{
  percentage()
})
setMethod(f="calculate",signature = "student",definition = function(obj)
{
  percentage=(obj@m1+obj@m2)/2
  cat("\n Percentage =",percentage)
  if(obj@m1 < 50 | obj@m2 < 50)
  {
    cat("\n Result=Fail")
  }
  else
  {
    cat("\n Result=Pass")
  }
})
#object creation
s1<-student(no=101,name="Anjali",m1=87,m2=83)
s2<-student(no=102,name="Poornima",m1=77,m2=89)
cat("\nObject created are :\n")
print(s1)
print(s2)
cat("\nPerformance of student s1 \n")
getDetails(s1)
cat("\nPerformance of student s2\n")
getDetails(s2)
#object creation
s3<-student()
s3<-setDetails(s3,103,"Pooja",75,66)
cat("\n Object s3 created through method\n")
print(s3)
cat("\n Performance of student s3\n")
getDetails(s3)
