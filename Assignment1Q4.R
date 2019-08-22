##Q4
A=as.Date(c("16may1965","21july1985","22june1994"),"%d%B%Y")
B=as.Date(c("01march1922","23september1955","21july1993"),"%d%B%Y")
C=as.Date(c("21september1942","02June1967","29april1996"),"%d%B%Y")


yeardiffA=difftime(A[3],A[1])
yeardiffA
a=(yeardiffA/365.25)
a
##Age next birthday at death
agenextbdA=as.integer(ifelse(a>as.integer(a),a+1,a))-1+1
agenextbdA
##Age last birthday at 1 Jan preceding death
agelastbdA=as.integer(a)-1
agelastbdA
##Age at birthday in policy year of death
tmp=as.POSIXlt(A[2])
tmp$year=tmp$year+as.integer((difftime(A[3],A[2]))/365.25) 
tmp$year
datemod=format(tmp)
datemod
tmp1=as.POSIXlt(A[2])
tmp1$year=tmp1$year+(as.integer(((difftime(A[3],A[2]))/365.25)+1))
tmp1$year
datemod1=format(tmp1)
datemod1
tmp2=as.POSIXlt(A[1])
tmp2$year=tmp2$year+as.integer((difftime(A[3],A[1]))/365.25) 
tmp2$year
datemod2=format(tmp2)
datemod2
ageatbdPLA=ifelse(datemod<=datemod2&&A[3]<=datemod1,as.integer(a),"")
ageatbdPLA=ageatbdPLA+1-1


yeardiffB=difftime(B[3],B[1])
yeardiffB
b=(yeardiffB/365.25)
b
##Age next birthday at death
agenextbdB=as.integer(ifelse(b>as.integer(b),b+1,b))+1-1
agenextbdB
##Age last birthday at 1 Jan preceding death
agelastbdB=as.integer(b)-1 
agelastbdB
##Age at birthday in policy year of death
tmp3=as.POSIXlt(B[2])
tmp3$year=tmp3$year+as.integer((difftime(B[3],B[2]))/365.25) 
tmp3$year
datemod3=format(tmp3)
datemod3
tmp4=as.POSIXlt(B[2])
tmp4$year=tmp4$year+(as.integer(((difftime(B[3],B[2]))/365.25)+1))
tmp4$year
datemod4=format(tmp4)
datemod4
tmp5=as.POSIXlt(B[1])
tmp5$year=tmp2$year+as.integer((difftime(B[3],B[1]))/365.25) 
tmp5$year
datemod5=format(tmp5)
datemod5
ageatbdPLB=ifelse(datemod3<=datemod5&&B[3]<=datemod4,as.integer(b),"")
ageatbdPLB=ageatbdPLB+1-1


yeardiffC=difftime(C[3],C[1])
yeardiffC
c=(yeardiffC/365.25)
c
##Age next birthday at death
agenextbdC=as.integer(ifelse(c>as.integer(c),c+1,c))+1-1
agenextbdC
##Age last birthday at 1 Jan preceding death
agelastbdC=as.integer(c)+1-1 
agelastbdC
##Age at birthday in policy year of death
tmp6=as.POSIXlt(C[2])
tmp6$year=tmp6$year+as.integer((difftime(C[3],C[2]))/365.25) 
tmp6$year
datemod6=format(tmp6)
datemod6
tmp7=as.POSIXlt(C[2])
tmp7$year=tmp7$year+(as.integer(((difftime(C[3],C[2]))/365.25)+1))
tmp7$year
datemod7=format(tmp7)
datemod7
tmp8=as.POSIXlt(C[1])
tmp8$year=tmp8$year+as.integer((difftime(C[3],C[1]))/365.25) 
tmp8$year
datemod8=format(tmp8)
datemod8
ageatbdPLC=ifelse(datemod6<=datemod8&&C[3]<=datemod7,as.integer(c),"")
ageatbdPLC=ageatbdPLC+1-1
