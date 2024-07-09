setwd("~/nanjing/wes_401samples/tmp_total")
library(data.table)
library(readxl)
library(dplyr)
a01<-fread("tmp01",select=c("#CHROM","POS","REF","ALT","SYMBOL","AF","AFR_AF","AMR_AF","EAS_AF","EUR_AF","SAS_AF","MAX_AF","MAX_AF_POPS","TRANSCRIPTION_FACTORS"))
write.csv(a01,"a01",row.names = FALSE)

a02<-fread("tmp02",select=c("#CHROM","POS","REF","ALT","SYMBOL","AF","AFR_AF","AMR_AF","EAS_AF","EUR_AF","SAS_AF","MAX_AF","MAX_AF_POPS","TRANSCRIPTION_FACTORS"))
write.csv(a02,"a02",row.names = FALSE)

a03<-fread("tmp03",select=c("#CHROM","POS","REF","ALT","SYMBOL","AF","AFR_AF","AMR_AF","EAS_AF","EUR_AF","SAS_AF","MAX_AF","MAX_AF_POPS","TRANSCRIPTION_FACTORS"))
write.csv(a03,"a03",row.names = FALSE)

a04<-fread("tmp04",select=c("#CHROM","POS","REF","ALT","SYMBOL","AF","AFR_AF","AMR_AF","EAS_AF","EUR_AF","SAS_AF","MAX_AF","MAX_AF_POPS","TRANSCRIPTION_FACTORS"))
write.csv(a04,"a04",row.names = FALSE)

##cat NVM*> tmp01
#cat a*>a_total
#wc -l a_total
#sort a_total | uniq -c >a

a<-fread("a",sep=",")
b<-select(a, V1)
write.csv(b,"b",row.names=FALSE)
c<-select(a,V2,V3,V4,V5,V6,V7,V8,V9,V10,V11,V12,V13,V14)
write.csv(c,"c",row.names=FALSE)
d<-fread("c")
e<-fread("b")
f<-cbind(e,d)
g<-f[order(-f[,1]),]
write.table(g,"g",quote = FALSE,sep="\t",row.names = FALSE,col.names = FALSE)

h<-fread("401samples_frequency",sep="\t")
i<-select(h,"FREQUENCY","#CHROM","POS","REF","ALT","SYMBOL")
write.csv(i,"i",row.names=FALSE)

#https://www.jianshu.com/p/ae4b772ef090#use utf8;  hebingshouliexiangtonghang.pl

#sort i | uniq >j
j<-fread("j",sep=",")
k<-select(j,V1,V2,V3,V4,V5)
write.csv(k,"k",row.names=FALSE)
l<-select(j,V6)
write.csv(l,"l",row.names=FALSE)
m<-fread("k")
n<-cbind(m,l)
write.csv(n,"n",row.names=FALSE)
b1<-fread("a1")

c1<-select(b1,V1_V2_V3_V4_V5)
write.csv(c1,"c1",row.names=FALSE)
d1<-fread("c1")
e1<-select(b1,V6)
f1<-cbind(d1,e1)
write.csv(f1,"f1",row.names=FALSE)
g1<-f1[order(-f1[,1]),]
write.csv(g1,"g1",row.names=FALSE)
h1<-fread("g1")
i1<-h1[order(-h1[,1]),]

write.table(i1,"i1",quote = FALSE,sep="\t",row.names = FALSE,col.names = TRUE)
