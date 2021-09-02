library(readxl)
PM <- read_excel("City list with PM2.5.xlsx", 
                 sheet = "Sheet1")
View(PM)
PM$PM2.5 = apply(PM[ ,c(3,4)],1,mean, na.rm=T)
library(tidyverse)
library(dplyr)
attach(PM)
PM=PM %>% arrange(PM2.5)

library(ggplot2)
ggplot(PM ,aes(reorder(NAC,PM2.5),PM2.5, label=round(PM2.5,digits=0)))+geom_bar(stat="identity", fill="blue", alpha=0.7,col="black")+
  theme(axis.text.x = element_text(angle=90, face="bold", colour="black", size=12, vjust=0.5),axis.text.y = element_text(face="bold", colour="black", size=12),axis.title.y = element_text(size=14),
        axis.ticks = element_line(size=1, linetype = "solid"), axis.title.x = element_blank(),panel.background = element_rect(fill = "white", color="black"),axis.ticks.length=unit(.25, "cm"))+
  geom_text(vjust=-0.4, size=4.5, fontface=2)+ylab(expression(bold(PM[2.5]~(mu~g/m^3))))

