cat("CREATION ")
cat("\n\n1.All combinations: \n")
stu<-data.frame(Regno=c(101:103), Name=c("Pooja","Anju","Poonima"), Percentage=c(43,45,54),DOB=as.Date(c("1993-10-01","1993-11-02","1994-04-11")),stringsAsFactors = FALSE)
print(stu)
cat("\n2.Structure: \n")
str(stu)
cat("\n3.Summary: \n")
print(summary(stu)) 
cat("\n4.Rows and Columns: \n")
print(nrow(stu))
print(ncol(stu))
cat("\n\nACCESSING ")
cat("\n1.Single Element: \n")
print(stu[1,2])
print(stu[2,])
print(stu[,2])
print(stu[,"Regno"])
cat("\n2.Subset of Column & Row: \n")
print(stu[1:2,1:2])
cat("\n3.Induvidual Attribute: \n")
print(stu$Name)
cat("\n\nMANIPULATION ")
cat("\n1.Adding a Column: \n")
stu$Course<-c("MCA","BCA","MBA")
print(stu)
cat("\n2.Adding a record: \n")
temp<-data.frame(Regno=c(104:105),Name=c("Anu","Siri"),Percentage=c(60,58),DOB=as.Date(c("1995-12-12","1994-10-10")),Course=c("MSc","MCA"))
print(temp)
cat("\n3.Combining two records: \n")
stu<-rbind(stu,temp)
print(stu)
cat("\n4.Sorting: \n")
cat("\n(i) Induvidual Column: \n")
print(stu[order(stu$Percentage),])
cat("\n(ii) More than one Column: \n")
print(stu[order(stu$Name,stu$Course),])
cat("\n(iii) Descending Order: \n")
print(stu[order(stu$Name,decreasing=TRUE),])
cat("\n5.Reverse: \n")
print(stu[order(rev(stu$Name)),])
cat("\n6.Change column order: \n")
print(stu[c(1,5,3,2,4)])
cat("\n7.Constraints: \n")
print(stu[stu$Course=="MCA" & stu$Regno>102,])