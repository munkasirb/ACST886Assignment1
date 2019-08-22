#Assignment1Q3
##a
Commission<- 1000
Int <-0.035
period <- 30
PV_Commission <-Commission*((1-(1+Int)^-period)/Int)*(1+Int) 
PV_Commission


##b 
#lower Interest Rate

##c
Loan_Amount <- 600000
Loan_Offset <- 100000
Payment <- Loan_Amount/((1-(1+Int)^-period)/Int)
Total_Loan_Amount <- Loan_Amount+PV_Commission
f <- function(i) {rep(Payment,30)
v= 1/(1+i)^(1:30)
PV=sum(Payment*v)
return(PV-PV_Commission-Loan_Amount)
}
uniroot(f, c(0,0.035))

#d

New_Payment <- Loan_Amount/((1-(1+0.03252067)^-period)/0.03252067)
New_Payment
