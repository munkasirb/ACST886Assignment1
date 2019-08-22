#Assignment1Q2
#a
Int <-0.035
Loan_Amount <- 600000
Loan_Offset <- 100000
period <- 30
Payment <- Loan_Amount/((1-(1+Int)^-period)/Int)
Payment

#b
Total_repayment<- Loan_Amount-Loan_Offset
Total_repayment
Payment_Offset_Interest<- Payment+Int*Loan_Offset
New_Payment_period <- -1*log(1-(Total_repayment*Int/Payment))/log(1+Int)
New_Payment_period
Act_Balance<- Total_repayment*(1+Int)^22 - Payment*(((1+Int)^22)-1)/Int
Last_year_Period<-Act_Balance*(1+Int)
Last_year_Period
