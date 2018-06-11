library(ggplot2)
library(sciplot)
library(mosaic)
library(tableone)
library(survival)
library(car)
library(gridExtra)
library(R.utils)
library(foreign)
library(lattice)
library(lme4)
library(MASS)
library(dplyr)
library(tidyr)
library(stringr)
library(lubridate)
library(rgl)
library(multcomp)
library(R.utils)
library(matlab)

#this is the data analysis script for the procalcitonin projects


#find alternative read in mechanism
Procal1= read.csv("Copy of PCAL.csv")
Procal2= read.csv("Copy of PCALC JAN.csv")
Procal3= read.csv("Copy of PCALC.csv")
Procal4= read.csv("Copy of PCT DEC.csv")
Procal5= read.csv("Copy of PROCAL 1.csv")
Procal6= read.csv("Copy of PROCAL 2.csv")
Procal7= read.csv("Copy of PROCAL.csv")
Procal8= read.csv("Copy of PROCAL3.csv")
Procal9= read.csv("PROCAL APRIL.csv")

#check data for readin accuracy 
head(Procal1)
head(Procal2)
head(Procal3)
head(Procal4)
head(Procal5)
head(Procal6)
head(Procal7)
head(Procal8)
head(Procal9)

#standadize result format

Procal1$PCT=Procal1$Result
Procal3$PCT=Procal3$Result
Procal4$PCT=Procal4$Result
Procal8$PCT=Procal8$PCT.Result

#merge 1 and 2

View(Procal6)

Procal1a2=rbind(Procal1, Procal2, by = "M.", all = TRUE)



#less than 0.5 for procal level 2 times

head(Procal1)

#Antiiotics stopped or not

#what antibiotics were they on
