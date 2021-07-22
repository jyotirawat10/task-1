library(stats)
library(tidyverse)

file=read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")
print(file)
View(file)
relation<-lm(Scores ~ Hours, data = file)
print(relation)
plot(file$Hours,file$Scores,col="black",main="Hours vs Scores",
     abline=lm(file$Hours~file$Scores),cex=1.3,pch=16,
     xlab="Hours",ylab="Scores")
#predict(relation,data.frame(Hours=c(9.25)))
predict(relation, data.frame(Hours = 9.25))

