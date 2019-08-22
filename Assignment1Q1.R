
#Assignment1Q1

Int <-0.035
Loan_Amount <- 600000
period <- 30
Payment <- Loan_Amount/((1-(1+Int)^-period)/Int)
Payment
