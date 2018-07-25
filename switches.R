fib <-function()
{
  t1<-0
  t2<-1
  temp<-0
  i=1
  n<-as.integer(readline(prompt = "Enter the number of terms:"))
  cat("\nFibonacci Series: ")
  while(i<n)
  {
    if(i == 1)
    {
      cat(t1)
      
    }
    if(i == 2)
    {
      cat(t2)
      
    }
    temp = t1 + t2;
    t1 = t2;
    t2 = temp;
    cat(temp)
    i=i+1
  }
}


fact<-function()
{
  i=1
  f=1
  num<-as.integer(readline(prompt = "Enter a number:"))
  repeat
  {
    
    f=f*i;
    i=i+1
    if(i>num)
    {
      break
    }
  }
  
  cat(f)
  
}


multi<-function()
{
  i=1
  n<-as.integer(readline(prompt = "Enter an integer"))
  
  j=10
  
  for(i in 1:10)
  {
    cat("\n", n, "*", i,"=", n*i);
    
  }
}

pri <- function(n)
{
  n<-as.integer(readline(prompt = "Enter an integer:"))
  if (n == 1){ 
    print('number is not prime')
  }else if (n == 2){ 
    print('number is prime')
  }else if (n > 2)
  {
    i <- sqrt(n)   
    i <- round(i, digits = 1) 
    vec <- c(2:i) 
    d <- n %% (vec) 
    if ( 0 %in% d)
    {
      print('number is not prime')
    }else{ print('number is prime')
    }
  }
  }



ch=0
while(ch!=5)
{
  cat("\n\n\t Operations")
  cat(" \n1.Fibonacci")
  cat(" \n2.Factorial")
  cat(" \n3.Multiplication Table")
  cat(" \n4.Prime number ")
  cat(" \n5.exit")
  ch<-as.integer(readline(prompt = "Enter Your Choice :"))
  cat("Your choice is :", ch)
  switch(ch,fib(),fact(),multi(),pri(),print("Exiting.."))
  
}
