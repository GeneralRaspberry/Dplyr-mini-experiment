getwd()
setwd("C:/Users/owner/Documents/Uni stuff/PhD/R scripts/Chapter 1/Script for identifying parameter space/Workspace objects")
load("temp to experiment with dplyr.Rda")

temp1<-temp%>%group_by(sim)%>%slice_head(n=6)%>%filter(time == max(time))

temptimemax<-temp%>%filter(infected<998)%>%filter(time==max(time))
