
setwd ("C:\\MY DRIVE\\Studies\\project extra\\1\\R code\\linear_models")

library(car)
library(data.table)
library(datasets)


b = read.csv("C:\\MY DRIVE\\Studies\\project extra\\1\\MoReBikeS\\MoReBikeS\\deployment_data\\station_222_deploy.csv")
print(b)
b1=b[complete.cases(b),]
print(b1)
b1[2,c(4,16,20,21,22,23,24)]
#---- 1 -----model_station_*_rlm_full------------------------------------------------------------------------------

f1<-list.files(pattern = 'model_station_.*\\_rlm_full.csv')
print(f1)
temp <- lapply(f1, fread)
a1 <- rbindlist( temp )
print(a1)
a11=a1[[2]]
y1<-c(1:200)
k=0
j=1
for(i in 1:200)
{
c1 =(a11[j])+(a11[j+1]*b1[ ,20 ])+(a11[j+2]*b1[ ,22 ])+(a11[j+3]*b1[ ,21])
print(c1)
for(k in 1:nrow(b1))
{
if(c1[k]<0)
{
c1[k]=b1[k,22]
} else {
if(c1[k]> b1[k,4])
{
c1[k]=b1[k,22]
} else {
c1[k]=c1[k]
}
}}
print(round(c1,0))
diff= abs(round(c1,0)-(b1$bikes))
y1[i]=c(mean(diff))
j=j+4
print(y1[i])
}
print(y1)
z1=min(y1)
print(z1)
l=1:200
ans1=which(y1[l] == min(y1[l])) 
print(ans1)
f1[ans1]
equation1=((ans1*4)-3)
s1=a1[equation1:(equation1+3)]
#------------END-1------------------------------------------------


#---- START-2 -----model_station_*_rlm_full_temp------------------------------------------------------------------------------
f2<-list.files(pattern = 'model_station_.*\\_rlm_full_temp.csv')
print(f2)
temp <- lapply(f2, fread)
a2 <- rbindlist( temp )
print(a2)
a21=a2[[2]]
y2<-c(1:200)
k=0
j=1
for(i in 1:200) #No.of files=200
{
c2 =(a21[j])+(a21[j+1]*b1[ ,20 ])+(a21[j+2]*b1[ ,22 ])+(a21[j+3]*b1[ ,21])+(a21[j+4]*b1[ ,16])
print(c2)
for(k in 1:nrow(b1))
{
if(c2[k]<0)
{
c2[k]=b1[k,22]
} else {
if(c2[k]> b1[k,4])
{
c2[k]=b1[k,22]
} else {
c2[k]=c2[k]
}
}}
print(round(c2,0))
diff= abs(round(c2,0)-(b1$bikes))
y2[i]=c(mean(diff))
j=j+5
print(y2[i])
}
print(y2)
z2=min(y2)
print(z2)
l=1:200
ans2=which(y2[l] == min(y2[l])) 
print(ans2)
f2[ans2]
equation2=((ans2*5)-4)
s2=a2[equation2:(equation2+4)]
#----------------END - 2--------------------------------------------

#---- START-3 -----model_station_*_rlm_short------------------------------------------------------------------------------
f3<-list.files(pattern = 'model_station_.*\\_rlm_short.csv')
print(f3)
temp <- lapply(f3, fread)
a3 <- rbindlist( temp )
print(a3)
a31=a3[[2]]
y3<-c(1:200)
k=0
j=1
for(i in 1:200)
{
c3 =(a31[j])+(a31[j+1]*b1[ ,20 ])+(a31[j+2]*b1[ ,24 ])+(a31[j+3]*b1[ ,23])
print(c3)
for(k in 1:nrow(b1))
{
if(c3[k]<0)
{
c3[k]=b1[k,22]
} else {
if(c3[k]> b1[k,4])
{
c3[k]=b1[k,22]
} else {
c3[k]=c3[k]
}
}}
print(round(c3,0))
diff= abs(round(c3,0)-(b1$bikes))
y3[i]=c(mean(diff))
j=j+4
print(y3[i])
}
print(y3)
z3=min(y3)
print(z3)
l=1:200
ans3=which(y3[l] == min(y3[l])) 
print(ans3)
f3[ans3]
equation3=((ans3*4)-3)
s3=a3[equation3:(equation3+3)]
#------------END-3------------------------------------------------

#---- START-4 -----model_station_*_rlm_short_full------------------------------------------------------------------------------
f4<-list.files(pattern = 'model_station_.*\\_rlm_short_full.csv')
print(f4)
temp <- lapply(f4, fread)
a4 <- rbindlist( temp )
print(a4)
a41=a4[[2]]
y4<-c(1:200)
k=0
j=1
for(i in 1:200) #No.of files=200
{
c4 =(a41[j])+(a41[j+1]*b1[ ,20 ])+(a41[j+2]*b1[ ,24 ])+(a41[j+3]*b1[ ,23])+(a41[j+4]*b1[ ,22])+(a41[j+5]*b1[ ,21])
print(c4)
for(k in 1:nrow(b1))
{
if(c4[k]<0)
{
c4[k]=b1[k,22]
} else {
if(c4[k]> b1[k,4])
{
c4[k]=b1[k,22]
} else {
c4[k]=c4[k]
}
}}
print(round(c4,0))
diff= abs(round(c4,0)-(b1$bikes))
y4[i]<-c(mean(diff)) 
j=j+6
print(y4[i])
}
print(y4)
z4=min(y4)
print(z4)
l=1:200
ans4=which(y4[l] == min(y4[l])) 
print(ans4)
f4[ans4]
equation4=((ans4*6)-5)
print(equation4)
s4=a4[equation4:(equation4+5)]
#----------------END - 4--------------------------------------------

#---- START-5 -----model_station_*_rlm_short_full_temp------------------------------------------------------------------------------
f5<-list.files(pattern = 'model_station_.*\\_rlm_short_full_temp.csv')
print(f5)
temp <- lapply(f5, fread)
a5 <- rbindlist( temp )
print(a5)
a51=a5[[2]]
y5<-c(1:200)
k=0
j=1
for(i in 1:200) #No.of files=200
{
c5 =(a51[j])+(a51[j+1]*b1[ ,20 ])+(a51[j+2]*b1[ ,24 ])+(a51[j+3]*b1[ ,23])+(a51[j+4]*b1[ ,22])+(a51[j+5]*b1[ ,21])+(a51[j+6]*b1[ ,16])
print(c5)
for(k in 1:nrow(b1))
{
if(c5[k]<0)
{
c5[k]=b1[k,22]
} else {
if(c5[k]> b1[k,4])
{
c5[k]=b1[k,22]
} else {
c5[k]=c5[k]
}
}}
print(round(c5,0))
diff= abs(round(c5,0)-(b1$bikes))
y5[i]=c(mean(diff)) 
j=j+7
print(y5[i])
}
print(y5)
z5=min(y5)
print(z5)
l=1:200
ans5=which(y5[l] == min(y5[l])) 
print(ans5)
f5[ans5]
equation5=((ans5*7)-6)
s5=a5[equation5:(equation5+6)]
#----------------END - 5--------------------------------------------

#---- START-6 -----model_station_*_rlm_short_temp------------------------------------------------------------------------------
f6<-list.files(pattern = 'model_station_.*\\_rlm_short_temp.csv')
print(f6)
temp <- lapply(f6, fread)
a6 <- rbindlist( temp )
print(a6)
a61=a6[[2]]
y6<-c(1:200)
k=0
j=1
for(i in 1:200) #No.of files=200
{
c6 =(a61[j])+(a61[j+1]*b1[ ,20 ])+(a61[j+2]*b1[ ,24 ])+(a61[j+3]*b1[ ,23])+(a61[j+4]*b1[ ,16])
print(c6)
for(k in 1:nrow(b1))
{
if(c6[k]<0)
{
c6[k]=b1[k,22]
} else {
if(c6[k]> b1[k,4])
{
c6[k]=b1[k,22]
} else {
c6[k]=c6[k]
}
}}
print(round(c6,0))
diff= abs(round(c6,0)-(b1$bikes))
y6[i]=c(mean(diff)) 
j=j+5
print(y6[i])
}
print(c6)
print(y6)
z6=min(y6)
print(z6)
l=1:200
ans6=which(y6[l] == min(y6[l])) 
print(ans6)
f6[ans6]
equation6=((ans6*5)-4)
s6=a6[equation6:(equation6+4)]
#----------------END - 6--------------------------------------------

#---- START-7 -----model_base_ago------------------------------------------------------------------------------

a7 = read.csv("C:\\MY DRIVE\\Studies\\project extra\\1\\MoReBikeS\\MoReBikeS\\linear_models\\model_base_ago.csv")
print(a7)
a71=a7[[2]]
c7 =(a71[1])+(a71[2]*b1[ ,20 ])
print(c7)
k=0
for(k in 1:nrow(b1))
{
if(c7[k]<0)
{
c7[k]=b1[k,22]
} else {
if(c7[k]> b1[k,4])
{
c7[k]=b1[k,22]
} else {
c7[k]=c7[k]
}
}}
print(round(c7,0))
diff= abs(round(c7,0)-(b1$bikes))
z7= mean(diff)
print(z7)
equation7=a7
s7=equation7
print(s7)
#----------------END - 7--------------------------------------------

#---- START-8 -----model_base_ago_fprofdiff------------------------------------------------------------------------------

a8 = read.csv("C:\\MY DRIVE\\Studies\\project extra\\1\\MoReBikeS\\MoReBikeS\\linear_models\\model_base_ago_fprofdiff.csv")
print(a8)
a81=a8[[2]]
c8 =(a81[1])+(a81[2]*b1[ ,20 ])+(a81[3]*b1[ ,21 ])
print(c8)
k=0
for(k in 1:nrow(b1))
{
if(c8[k]<0)
{
c8[k]=b1[k,22]
} else {
if(c8[k]> b1[k,4])
{
c8[k]=b1[k,22]
} else {
c8[k]=c8[k]
}
}}
print(round(c8,0))
diff= abs(round(c8,0)-(b1$bikes))
z8= mean(diff)
print(z8)
equation8=a8
s8=equation8
print(s8)
#----------------END - 8--------------------------------------------

#---- START-9 -----model_base_ago_fprofdiff_fprof------------------------------------------------------------------------------

a9 = read.csv("C:\\MY DRIVE\\Studies\\project extra\\1\\MoReBikeS\\MoReBikeS\\linear_models\\model_base_ago_fprofdiff_fprof.csv")
print(a9)
a91=a9[[2]]
c9 =(a91[1])+(a91[2]*b1[ ,20 ])+(a91[3]*b1[ ,21 ])+(a91[4]*b1[ ,22 ])
print(c9)
k=0
for(k in 1:nrow(b1))
{
if(c9[k]<0)
{
c9[k]=b1[k,22]
} else {
if(c9[k]> b1[k,4])
{
c9[k]=b1[k,22]
} else {
c9[k]=c9[k]
}
}}
print(round(c9,0))
diff= abs(round(c9,0)-(b1$bikes))
z9= mean(diff)
print(z9)
equation9=a9
s9=equation9
print(s9)
#----------------END - 9--------------------------------------------

#---- START-10 -----model_base_ago_sprofdiff------------------------------------------------------------------------------

a10 = read.csv("C:\\MY DRIVE\\Studies\\project extra\\1\\MoReBikeS\\MoReBikeS\\linear_models\\model_base_ago_sprofdiff.csv")
print(a10)
a101=a10[[2]]
c10 =(a101[1])+(a101[2]*b1[ ,20 ])+(a101[3]*b1[ ,23 ])
print(c10)
k=0
for(k in 1:nrow(b1))
{
if(c10[k]<0)
{
c10[k]=b1[k,22]
} else {
if(c10[k]> b1[k,4])
{
c10[k]=b1[k,22]
} else {
c10[k]=c10[k]
}
}}
print(round(c10,0))
diff= abs(round(c10,0)-(b1$bikes))
z10= mean(diff)
print(z10)
equation10=a10
s10=equation10
print(s10)
#----------------END - 10--------------------------------------------

#---- START-11 -----model_base_ago_sprofdiff_sprof------------------------------------------------------------------------------

a11 = read.csv("C:\\MY DRIVE\\Studies\\project extra\\1\\MoReBikeS\\MoReBikeS\\linear_models\\model_base_ago_sprofdiff_sprof.csv")
print(a11)
a111=a11[[2]]
c11 =(a111[1])+(a111[2]*b1[ ,20 ])+(a111[3]*b1[ ,23 ])+(a111[4]*b1[ ,24 ])
print(c11)
k=0
for(k in 1:nrow(b1))
{
if(c11[k]<0)
{
c11[k]=b1[k,22]
} else {
if(c11[k]> b1[k,4])
{
c11[k]=b1[k,22]
} else {
c11[k]=c11[k]
}
}}
print(round(c11,0))
diff= abs(round(c11,0)-(b1$bikes))
z11= mean(diff)
print(z11)
equation11=a11
s11=equation11
print(s11)
#----------------END - 11--------------------------------------------

#---- START-12 -----model_base_fprof------------------------------------------------------------------------------

a12 = read.csv("C:\\MY DRIVE\\Studies\\project extra\\1\\MoReBikeS\\MoReBikeS\\linear_models\\model_base_fprof.csv")
print(a12)
a121=a12[[2]]
c12 =(a121[1])+(a121[2]*b1[ ,22 ])
print(c12)
k=0
for(k in 1:nrow(b1))
{
if(c12[k]<0)
{
c12[k]=b1[k,22]
} else {
if(c12[k]> b1[k,4])
{
c12[k]=b1[k,22]
} else {
c12[k]=c12[k]
}
}}
diff= abs(round(c12,0)-(b1$bikes))
z12= mean(diff)
print(z12)
equation12=a12
s12=equation12
print(s12)
#----------------END - 12--------------------------------------------

#---- START-13 -----model_base_sprof------------------------------------------------------------------------------

a13 = read.csv("C:\\MY DRIVE\\Studies\\project extra\\1\\MoReBikeS\\MoReBikeS\\linear_models\\model_base_sprof.csv")
print(a13)
a131=a13[[2]]
c13 =(a131[1])+(a131[2]*b1[ ,24 ])
print(c13)
k=0
for(k in 1:nrow(b1))
{
if(c13[k]<0)
{
c13[k]=b1[k,22]
} else {
if(c13[k]> b1[k,4])
{
c13[k]=b1[k,22]
} else {
c13[k]=c13[k]
}
}}
diff= abs(round(c13,0)-(b1$bikes))
z13= mean(diff)
print(z13)
equation13=a13
s13=equation13
print(s13)
#----------------END - 13--------------------------------------------

#-------------------Solution--------------------
z=c(z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13)
for( o in 1:13)
{
print(z[o])
}

MAE=min(z)
sprintf("MAE = %f",MAE)
p=1:13
solu=which(z[p] == min(z[p])) 
print(solu)

if(solu==1)
{

print(c(ans1,f1[ans1]))
print(s1)

} else {

if(solu==2)
{
print(c(ans2,f2[ans2]))
print(s2)

} else {

if(solu==3)
{

print(c(ans3,f3[ans3]))
print(s3)

} else {

if(solu==4)
{

print(c(ans4,f4[ans4]))
print(s4)

} else {

if(solu==5)
{

print(c(ans5,f5[ans5]))
print(s5)

} else {

if(solu==6)
{

print(c(ans6,f6[ans6]))
print(s6)

} else {

if(solu==7)
{
print(s7)
} else {

if(solu==8)
{
print(s8)
} else {

if(solu==9)
{
print(s9)
} else {

if(solu==10)
{
print(s10)
} else {

if(solu==11)
{
print(s11)
} else {

if(solu==12)
{
print(s12)
} else {

if(solu==13)
{
print(s13)
}}}}}}}}}}}}}

sprintf("MAE = %f",MAE)
sprintf("Model used = %d/13",solu)
warnings()


