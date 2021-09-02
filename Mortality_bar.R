library(readxl)
mort <- read_excel("City list with PM2.5.xlsx", 
                   sheet = "Mortality cases")
View(mort)
mort=mort[ ,c(1:8)]
library(reshape2)
library(ggplot2)
library(dplyr)
mort_melt = melt(mort, id="NAC", id.name = "NAC", variable.name = "Causes", value.name = "Cases")
ggplot(mort_melt%>% filter(Causes != "NCD+LRI"), aes(NAC,Cases))+geom_bar(stat="identity", col="black",fill="blue", alpha=0.7)+
  facet_wrap(~Causes, scales='free')+theme(axis.text.x = element_text(angle=90, vjust=0.5, face="bold", colour="black"),
                            strip.text.x =element_text(size=12,face="bold", colour="black"),panel.background = element_blank(), legend.text.align=0,panel.border = element_rect(colour = "black",fill=NA),strip.border = element_rect(colour="black", fill=NA),
                            axis.text.y = element_text(face="bold", colour="black"), axis.title.x = element_blank(), axis.title.y = element_text(size=12,face="bold", colour="black"),axis.ticks.length=unit(.25, "cm"))+
  geom_text(aes(label=round(Cases,digit=0)), hjust=-0.1, size=3.5, fontface=2, angle=90)+scale_y_continuous(limits=c(0,10000))

 ##Percentage share cause specific
Total_sum = mort_melt %>% filter(Causes =="NCD+LRI")
Individual_cases = mort_melt %>% filter(Causes !="NCD+LRI")
Percent_share=merge(Individual_cases,Total_sum, by="NAC")
Percent_share=Percent_share %>% select(-4) %>% dplyr::rename(Causes=2,Cases=3,Total=4)
Percent_share=Percent_share %>% mutate(share=(Cases*100/Total))
ggplot(Percent_share, aes(NAC,share))+geom_bar(aes(fill=Causes), stat="identity", col="black",size=1)+
  scale_fill_manual(values=c("brown4","darkgrey","red","black","coral1","darkgreen"))+theme(axis.text.x = element_text(size=14,angle=90, vjust=0.5, face="bold", colour="black"),
                                                                                            strip.text.x =element_text(size=12,face="bold", colour="black"),panel.background = element_rect(fill = "white", color="black"),
                                                                                            axis.text.y = element_text(size=14,face="bold", colour="black"), axis.title.x = element_blank(), axis.title.y = element_text(size=15,face="bold", colour="black"),axis.ticks.length=unit(.25, "cm"), legend.title = element_text(size=14,face="bold", colour="black"), legend.text = element_text(size=12,face="bold", colour="black") )+
  ylab("Percentage Share (%)")

##Percentage share Air pollution specific
library(readxl)
PM <- read_excel("City list with PM2.5.xlsx", 
                 sheet = "PM2.5 Vs others")
View(PM)
library(reshape2)
library(ggplot2)
library(dplyr)
PM =PM %>% select(1,4,5)
PM=melt(PM, id="NAC",id.name = "NAC", variable.name = "Causes", value.name = "Share")
ggplot(PM, aes(x="", y=Share, fill=Causes)) + geom_bar(stat="identity", width=1, col="black")+
  coord_polar("y", start=0) + geom_label(aes(label = paste0(round(Share,digit=1), "%")), position = position_stack(vjust = 0.5),fontface=2, size=4.0, colour="white")+
  scale_fill_manual(values=c("#219ebc", "#5a189a"),labels=c(expression(bold("PM"[2.5])),"Others")) +
  theme(axis.line = element_blank(),axis.text = element_blank(),axis.ticks = element_blank(),
  plot.title = element_text(hjust = 0.5, color = "#666666"),strip.text.x = element_text(face="bold", size=10,color="black"),
  legend.title=element_text(face="bold", size=11,color="black"), legend.text = element_text(face="bold", size=9,color="black"),panel.background = element_blank(), legend.text.align=0,panel.border = element_rect(colour = "black",fill=NA),strip.background = element_rect(colour="black", fill=NA))+facet_wrap(~NAC, ncol=8)
 
