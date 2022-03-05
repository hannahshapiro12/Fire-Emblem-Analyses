library(tidyverse)

cleanedData <-FE %>% 
  group_by(Gender) %>% 
  arrange(Gender)

cleanedData

ggplot(data = cleanedData, aes(x = Lord, y = Strength, fill = Gender)) + 
  geom_col(aes(color=Gender)) + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

ggplot(data = cleanedData, aes(x = Lord, y = Defense, fill = Gender)) + 
  geom_col(aes(color=Gender)) + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

ggplot(data = cleanedData, aes(x = Lord, y = HP, fill = Gender)) + 
  geom_col(aes(color=Gender)) + theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

male<- data.frame(FE$Gender=="M")

female<-cleanedData[1:6,]
male<-cleanedData[7:23,]

a1<-mean(female$HP , na.rm = T)
b1<-mean(male$HP , na.rm = T)

a2<-mean(female$Strength , na.rm = T)
b2<-mean(male$Strength , na.rm = T)

a3<-mean(female$Magic , na.rm = T)
b3<-mean(male$Magic , na.rm = T)

a7<-mean(female$Defense , na.rm = T)
b7<-mean(male$Defense , na.rm = T)

a4<-mean(female$Skill , na.rm = T)
b4<-mean(male$Skill , na.rm = T)

a5<-mean(female$Speed , na.rm = T)
b5<-mean(male$Speed , na.rm = T)

a6<-mean(female$Luck , na.rm = T)
b6<-mean(male$Luck , na.rm = T)

a8<-mean(female$Resistance , na.rm = T)
b8<-mean(male$Resistance , na.rm = T)

averages<-data.frame(Female = c(a1,a2,a3,a4,a5,a6,a7,a8), Male = c(b1,b2,b3,b4,b5,b6,b7,b8),
                     row.names = c("HP","Strength", "Magic", "Skill", "Speed", "Luck", "Defense", "Resistance"))

averages
