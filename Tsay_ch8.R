# Tsay Chapter 8 ----
# Portmanteau Test Statistics 
# Esam Mahdi, A. Ian McLeod
library(portes)

data("IbmSp500")
head(IbmSp500)
# convert from discrete return into continuous return
ibm <- log(IbmSp500[, 2] + 1) * 100
head(ibm)
sp5 <- log(IbmSp500[, 3] + 1) * 100

z <- data.frame(cbind(ibm, sp5))
FitIBMSP5001 <- ar.ols(z, aic = FALSE, intercept = TRUE, order.max = 1)
FitIBMSP5001
Hosking(FitIBMSP5001)

portest(FitIBMSP5001, test = "Hosking", ncores = 4)
















