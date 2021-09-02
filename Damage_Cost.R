library(readxl)
PM <- read_excel("City list with PM2.5.xlsx", 
                                   sheet = "Damage Cost-2017", skip = 1)
View(PM)
PM=PM %>% select(1,3,19:24)
colnames(PM)=c("Zones","NAC","IHD","Stroke","COPD","Lung Cancer","LRI","NCD-Other")
PM=melt(PM, id=c("Zones","NAC"),id.name = c("Zones","NAC"), variable.name = "Causes", value.name = "Cost")

PM$NAC=factor(PM$NAC)
PM=PM %>% group_by(NAC) %>% dplyr::mutate(Percentage = Cost*100/sum(Cost))

# Donut chart with ggplot2
library(ggrepel)
ggplot(data = PM , aes(x=2, y =  Percentage, fill = Causes))+
  geom_col(color = "black",size=1) +
  coord_polar("y", start = 0) + 
  geom_label_repel(aes(label = paste0(round(Cost))), 
                   position = position_stack(vjust = 0.5), fontface=2, size=4.0, colour="white") +
  theme(panel.background = element_blank(),
        axis.line = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(), 
        plot.title = element_text(hjust = 0.5, size = 12, face="bold"), strip.text.x = element_text(face="bold", size=10,color="black"),
        legend.title=element_text(face="bold", size=10,color="black"), legend.text = element_text(face="bold", size=8,color="black"),panel.border = element_rect(colour = "black",fill=NA),strip.background = element_rect(colour="black", fill=NA)) +
  xlim(0.5, 2.5)+facet_wrap(~NAC, ncol=8)+scale_fill_manual(values=c("brown4","darkgrey","red","black","coral1","darkgreen"))

##Damage cost -2024
library(readxl)
PM <- read_excel("City list with PM2.5.xlsx", 
                 sheet = "Damage Cost-2024", skip = 1)
View(PM)
PM=PM %>% select(1,3,19:24)
colnames(PM)=c("Zones","NAC","IHD","Stroke","COPD","Lung Cancer","LRI","NCD-Other")
PM=melt(PM, id=c("Zones","NAC"),id.name = c("Zones","NAC"), variable.name = "Causes", value.name = "Cost")

PM$NAC=factor(PM$NAC)
PM=PM %>% group_by(NAC) %>% dplyr::mutate(Percentage = Cost*100/sum(Cost))

# Donut chart with ggplot2
library(ggrepel)
ggplot(data = PM , aes(x=2, y =  Percentage, fill = Causes))+
  geom_col(color = "black",size=1) +
  coord_polar("y", start = 0) + 
  geom_label_repel(aes(label = paste0(round(Cost))), 
                   position = position_stack(vjust = 0.5), fontface=2, size=4.0, colour="white") +
  theme(panel.background = element_blank(),
        axis.line = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(), 
        plot.title = element_text(hjust = 0.5, size = 12, face="bold"), strip.text.x = element_text(face="bold", size=10,color="black"),
        legend.title=element_text(face="bold", size=10,color="black"), legend.text = element_text(face="bold", size=8,color="black"),panel.border = element_rect(colour = "black",fill=NA),strip.background = element_rect(colour="black", fill=NA)) +
  xlim(0.5, 2.5)+facet_wrap(~NAC, ncol=8)+scale_fill_manual(values=c("brown4","darkgrey","red","black","coral1","darkgreen"))
