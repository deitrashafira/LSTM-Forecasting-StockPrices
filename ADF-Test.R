library(readxl)
library(tseries)
library(FitAR)
library(car)
library(lmtest)
library(MASS)

# Define the variables
data_saham <- read_excel("C:/Users/LENOVO/Documents/SKRIPSI BISMILLAH/SEMINAR HASIL/PJAA.JK 31 Oktober.xlsx")
Close <- as.ts(data_saham$Close)
Open <- as.ts(data_saham$Open)
Low <- as.ts(data_saham$Low)
High <- as.ts(data_saham$High)

# Stationarity test using Augmented Dickey Fuller Test
adf.test(Close)
adf.test(Open)
adf.test(Low)
adf.test(High)

# The variables need to be differenced at first lag
adf.test(diff(Close))
adf.test(diff(Open))
adf.test(diff(Low))
adf.test(diff(High))
# Conclusion: Univariate variables are stationary after the first lag differencing
