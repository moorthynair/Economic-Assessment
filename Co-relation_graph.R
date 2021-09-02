
## linear regression model

par(mfrow=c(3,4))
#Ghaziabad - 2018
library(readxl)
gazi <- read_excel("Gaziabad-2018.xlsx", 
                            na = "None")
View(gazi)
gazi$PM2.5 = ifelse(gazi$PM2.5>2 & gazi$PM2.5<999, gazi$PM2.5, NA)
gazi$PM10 = ifelse(gazi$PM10>2 & gazi$PM10<999, gazi$PM10, NA)
gazi = na.omit(gazi)
plot(PM2.5~PM10, data = gazi, pch =16, cex=0.5, font.lab=2, font.axis=2, 
     xlab = expression(bold(PM[10](mu*g/m^3))), ylab = expression(bold(PM[2.5](mu*g/m^3))), 
     main= "Ghaziabad -2018", cex.lab=1)
abline(lm(PM2.5~PM10, data=gazi), col="red", lwd =3, lty=4)
text( x=15, y=900, adj=0,label = "r =0.77", cex=1.5, font =4, col="blue")
k=lm(PM2.5~PM10, data=gazi)
predict(k, list(PM10=478.53))
predict(k, list(PM10=280.50))

#Jaipur - 2017
library(readxl)
Jai <- read_excel("Jaipur-2017.xlsx", col_types = c("text", 
                                                    "numeric", "numeric"), na = "None")
View(Jai)
Jai$PM2.5 = ifelse(Jai$PM2.5>2 & Jai$PM2.5<999, Jai$PM2.5, NA)
Jai$PM10 = ifelse(Jai$PM10>2 & Jai$PM10<999, Jai$PM10, NA)
Jai = na.omit(Jai)
plot(PM2.5~PM10, data = Jai, pch =16, cex=0.5, font.lab=2, font.axis=2, 
     xlab = expression(bold(PM[10](mu*g/m^3))), ylab = expression(bold(PM[2.5](mu*g/m^3))), 
     main= "Jaipur -2017", cex.lab=1)
abline(lm(PM2.5~PM10, data=Jai), col="red", lwd =3, lty=4)
text( x=15, y=700, adj=0,label = "r =0.82", cex=1.5, font =4, col="blue")
cor.test(Jai$PM2.5, Jai$PM10)
k=lm(PM2.5~PM10, data=Jai)
predict(k, list(PM10=176.89))

#Jodhpur - 2018
library(readxl)
Jod <- read_excel("Jodhpur-2018.xlsx", na = "None")
View(Jod)
Jod$PM2.5 = ifelse(Jod$PM2.5>2 & Jod$PM2.5<999, Jod$PM2.5, NA)
Jod$PM10 = ifelse(Jod$PM10>2 & Jod$PM10<999, Jod$PM10, NA)
Jod = na.omit(Jod)
plot(PM2.5~PM10, data = Jod, pch =16, cex=0.5, font.lab=2, font.axis=2, 
     xlab = expression(bold(PM[10](mu*g/m^3))), ylab = expression(bold(PM[2.5](mu*g/m^3))), 
     main= "Jodhpur -2018", cex.lab=1)
abline(lm(PM2.5~PM10, data=Jod), col="red", lwd =3, lty=4)
text( x=15, y=700, adj=0,label = "r =0.86", cex=1.5, font =4, col="blue")
cor.test(Jod$PM2.5, Jod$PM10)
k=lm(PM2.5~PM10, data=Jod)
predict(k, list(PM10=180.22))

#Nagpur - 2017
library(readxl)
Nag <- read_excel("Nagpur-2017.xlsx", na = "None")
View(Nag)
Nag$PM2.5 = ifelse(Nag$PM2.5>2 & Nag$PM2.5<999, Nag$PM2.5, NA)
Nag$PM10 = ifelse(Nag$PM10>2 & Nag$PM10<999, Nag$PM10, NA)
Nag = na.omit(Nag)
plot(PM2.5~PM10, data = Nag, pch =16, cex=0.5, font.lab=2, font.axis=2, 
     xlab = expression(bold(PM[10](mu*g/m^3))), ylab = expression(bold(PM[2.5](mu*g/m^3))), 
     main= "Nagpur -2017", cex.lab=1)
abline(lm(PM2.5~PM10, data=Nag), col="red", lwd =3, lty=4)
text( x=15, y=700, adj=0,label = "r =0.86", cex=1.5, font =4, col="blue")
cor.test(Nag$PM2.5, Nag$PM10)
k=lm(PM2.5~PM10, data=Nag)
predict(k, list(PM10=101.7))

#Pune - 2017
library(readxl)
Pun <- read_excel("Pune-2017.xlsx", na = "None")
View(Pun)
Pun$PM2.5 = ifelse(Pun$PM2.5>2 & Pun$PM2.5<999, Pun$PM2.5, NA)
Pun$PM10 = ifelse(Pun$PM10>2 & Pun$PM10<999, Pun$PM10, NA)
Pun = na.omit(Pun)
plot(PM2.5~PM10, data = Pun, pch =16, cex=0.5, font.lab=2, font.axis=2, 
     xlab = expression(bold(PM[10](mu*g/m^3))), ylab = expression(bold(PM[2.5](mu*g/m^3))), 
     main= "Pune -2017", cex.lab=1)
abline(lm(PM2.5~PM10, data=Pun), col="red", lwd =3, lty=4)
text( x=15, y=500, adj=0,label = "r =0.65", cex=1.5, font =4, col="blue")
cor.test(Pun$PM2.5, Pun$PM10)
k=lm(PM2.5~PM10, data=Pun)
predict(k, list(PM10=102))

#Mumbai- 2018
library(readxl)
library(readxl)
Mum <- read_excel("Mumbai-2018.xlsx", col_types = c("text", 
                                                    "numeric", "numeric"), na = "None")
View(Mum)
Mum$PM2.5 = ifelse(Mum$PM2.5>2 & Mum$PM2.5<999, Mum$PM2.5, NA)
Mum$PM10 = ifelse(Mum$PM10>2 & Mum$PM10<999, Mum$PM10, NA)
Mum = na.omit(Mum)
plot(PM2.5~PM10, data = Mum, pch =16, cex=0.5, font.lab=2, font.axis=2, 
     xlab = expression(bold(PM[10](mu*g/m^3))), ylab = expression(bold(PM[2.5](mu*g/m^3))), 
     main= "Mumbai -2018", cex.lab=1)
abline(lm(PM2.5~PM10, data=Mum), col="red", lwd =3, lty=4)
text( x=15, y=400, adj=0,label = "r =0.83", cex=1.5, font =4, col="blue")
cor.test(Mum$PM2.5, Mum$PM10)
k=lm(PM2.5~PM10, data=Mum)
predict(k, list(PM10=108.59))

## Kolkata -2018
library(readxl)
Kol <- read_excel("Kolkata-2018.xlsx", col_types = c("text", 
                                                    "numeric", "numeric"), na = "None")
View(Kol)
Kol$PM2.5 = ifelse(Kol$PM2.5>2 & Kol$PM2.5<999, Kol$PM2.5, NA)
Kol$PM10 = ifelse(Kol$PM10>2 & Kol$PM10<999, Kol$PM10, NA)
Kol = na.omit(Kol)
plot(PM2.5~PM10, data = Kol, pch =16, cex=0.5, font.lab=2, font.axis=2, 
     xlab = expression(bold(PM[10](mu*g/m^3))), ylab = expression(bold(PM[2.5](mu*g/m^3))), 
     main= "Kolkata -2018", cex.lab=1, axes=T)
abline(lm(PM2.5~PM10, data=Kol), col="red", lwd =3, lty=4)
text( x=15, y=700, adj=0,label = "r =0.97", cex=1.5, font =4, col="blue")
axis(side=2, at= c(0,200,400,600,800), labels = c(0,200,400,600,800))
cor.test(Kol$PM2.5, Kol$PM10)
k=lm(PM2.5~PM10, data=Kol)
predict(k, list(PM10=108.59))

#visakhapatnam - 2018
library(readxl)
vish <- read_excel("vishakapatnam-2018.xlsx", 
                   na = "None")
View(vish)
vish$PM2.5 = ifelse(vish$PM2.5>2 & vish$PM2.5<999, vish$PM2.5, NA)
vish$PM10 = ifelse(vish$PM10>2 & vish$PM10<999, vish$PM10, NA)
vish = na.omit(vish)
plot(PM2.5~PM10, data = vish, pch =16, cex=0.5, font.lab=2, font.axis=2, 
     xlab = expression(bold(PM[10](mu*g/m^3))), ylab = expression(bold(PM[2.5](mu*g/m^3))), 
     main= "Visakhapatnam -2018", cex.lab=1)
abline(lm(PM2.5~PM10, data=vish), col="red", lwd =3, lty=4)
text( x=15, y=600, adj=0,label = "r =0.77", cex=1.5, font =4, col="blue")
k=lm(PM2.5~PM10, data=vish)
cor.test(vish$PM2.5, vish$PM10)
predict(k, list(PM10=73.25))

#Amritsar - 2018
library(readxl)
amrit <- read_excel("Amritsar-2018.xlsx", 
                   na = "None")
View(amrit)
amrit$PM2.5 = ifelse(amrit$PM2.5>2 & amrit$PM2.5<999, amrit$PM2.5, NA)
amrit$PM10 = ifelse(amrit$PM10>2 & amrit$PM10<999, amrit$PM10, NA)
amrit = na.omit(amrit)
plot(PM2.5~PM10, data = amrit, pch =16, cex=0.5, font.lab=2, font.axis=2, 
     xlab = expression(bold(PM[10](mu*g/m^3))), ylab = expression(bold(PM[2.5](mu*g/m^3))), 
     main= "Amritsar-2018", cex.lab=1)
abline(lm(PM2.5~PM10, data=amrit), col="red", lwd =3, lty=4)
text( x=15, y=400, adj=0,label = "r =0.77", cex=1.5, font =4, col="blue")
k=lm(PM2.5~PM10, data=amrit)
cor.test(amrit$PM2.5, amrit$PM10)
predict(k, list(PM10=161.50))

#Ludhiana - 2018
library(readxl)
ludi <- read_excel("Ludhiana-2018.xlsx", 
                    na = "None")
View(ludi)
ludi$PM2.5 = ifelse(ludi$PM2.5>2 & ludi$PM2.5<999, ludi$PM2.5, NA)
ludi$PM10 = ifelse(ludi$PM10>2 & ludi$PM10<999, ludi$PM10, NA)
ludi = na.omit(ludi)
plot(PM2.5~PM10, data = ludi, pch =16, cex=0.5, font.lab=2, font.axis=2, 
     xlab = expression(bold(PM[10](mu*g/m^3))), ylab = expression(bold(PM[2.5](mu*g/m^3))), 
     main= "Ludhiana -2018", cex.lab=1)
abline(lm(PM2.5~PM10, data=ludi), col="red", lwd =3, lty=4)
text( x=15, y=300, adj=0,label = "r =0.82", cex=1.5, font =4, col="blue")
k=lm(PM2.5~PM10, data=ludi)
cor.test(ludi$PM2.5, ludi$PM10)
predict(k, list(PM10=168))

######### Population (Age>25)- projection ##############
library(readxl)
percent <- read_excel("City list with PM2.5.xlsx", 
                      sheet = "Percentage (Age>25)")
View(percent)
percent = na.omit(percent)
percent$States= as.factor(percent$States)
attach(percent)
par(mfrow=c(4,5))

## India
plot(Year[States=="India"], Percent[States=="India"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "India", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="India"], Percent[States=="India"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()

##Delhi
plot(Year[States=="Delhi"], Percent[States=="Delhi"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Delhi", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Delhi"], Percent[States=="Delhi"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()

##Jammu & Kashmir
plot(Year[States=="Jammu & Kashmir"], Percent[States=="Jammu & Kashmir"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F,  xlab = "Years", ylab="Percentage (%)",main = "Jammu & Kashmir", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Jammu & Kashmir"], Percent[States=="Jammu & Kashmir"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()

##Punjab
plot(Year[States=="Punjab"], Percent[States=="Punjab"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Punjab", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Punjab"], Percent[States=="Punjab"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(55,60,65,71), label =c(55,60,65,71), font=2,cex.axis=1.2)
box()

##Rajasthan
plot(Year[States=="Rajasthan"], Percent[States=="Rajasthan"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Rajasthan", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Rajasthan"], Percent[States=="Rajasthan"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()

##Chattisgarh
plot(Year[States=="Chattisgarh"], Percent[States=="Chattisgarh"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Chhattisgarh", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Chattisgarh"], Percent[States=="Chattisgarh"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()

##Madhya Pradesh
plot(Year[States=="Madhya Pradesh"], Percent[States=="Madhya Pradesh"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Madhya Pradesh", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Madhya Pradesh"], Percent[States=="Madhya Pradesh"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()

##Uttarkhand
plot(Year[States=="Uttarkhand"], Percent[States=="Uttarkhand"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Uttarakhand", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Uttarkhand"], Percent[States=="Uttarkhand"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()

##Uttarpradesh
plot(Year[States=="Uttarpradesh"], Percent[States=="Uttarpradesh"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Uttar Pradesh", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Uttarpradesh"], Percent[States=="Uttarpradesh"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(43,47,53,57), label =c(43,47,53,57), font=2,cex.axis=1.2)
box()

##Bihar
plot(Year[States=="Bihar"], Percent[States=="Bihar"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Bihar", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Bihar"], Percent[States=="Bihar"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(41,45,50,55), label =c(41,45,50,55), font=2,cex.axis=1.2)
box()

##Jharkhand	
plot(Year[States=="Jharkhand"], Percent[States=="Jharkhand"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Jharkhand", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Jharkhand"], Percent[States=="Jharkhand"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(45,50,55,61), label =c(45,50,55,61), font=2,cex.axis=1.2)
box()

##Odisha
plot(Year[States=="Odisha"], Percent[States=="Odisha"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Odisha", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Odisha"], Percent[States=="Odisha"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()

##West Bengal
plot(Year[States=="West Bengal"], Percent[States=="West Bengal"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "West Bengal", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="West Bengal"], Percent[States=="West Bengal"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()

##Assam
plot(Year[States=="Assam"], Percent[States=="Assam"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Assam", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Assam"], Percent[States=="Assam"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()

##Gujarat
plot(Year[States=="Gujarat"], Percent[States=="Gujarat"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Gujarat", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Gujarat"], Percent[States=="Gujarat"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()

##Maharashtra
plot(Year[States=="Maharashtra"], Percent[States=="Maharashtra"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Maharashtra", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Maharashtra"], Percent[States=="Maharashtra"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()

##Andhrapradesh
plot(Year[States=="Andhrapradesh"], Percent[States=="Andhrapradesh"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Andhra Pradesh", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Andhrapradesh"], Percent[States=="Andhrapradesh"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(55,59,63,67,72), label =c(55,59,63,67,72), font=2,cex.axis=1.2)
box()

##Karnataka
plot(Year[States=="Karnataka"], Percent[States=="Karnataka"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Karnataka", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Karnataka"], Percent[States=="Karnataka"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()

##Telangana
plot(Year[States=="Telangana"], Percent[States=="Telangana"], data=percent, type="p", pch=19,cex=2,
     col="black", axes = F, xlab = "Years", ylab="Percentage (%)", main = "Telangana", cex.main=1.5, cex.lab=1.25, font.lab=2)
lines(Year[States=="Telangana"], Percent[States=="Telangana"], data=percent,lty=2,lwd=3, col="red")
axis(side = 1, at =c(2011,2016,2021,2026,2031,2036), label=c(2011,2016,2021,2026,2031,2036), font=2,cex.axis=1.2)
axis(side =2, at=c(50,54,58,62,65), label =c(50,54,58,62,65), font=2,cex.axis=1.2)
box()
library(dplyr)
k = lm(Percent~Year, data=percent %>% filter(States=="Telangana"))

summary(k)
predict(k, list(Year=2017))
predict(k, list(Year=2024))
k$coeff
