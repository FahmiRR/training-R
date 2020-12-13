library(tidyverse)

### TYPE OF DATA

# Character
contoh_char_1 = "Greeneration"
contoh_char_2 = "Ecorang3r"
contoh_char_3 = "Jalan Citamiang No.6"

class(contoh_char_1)
class(contoh_char_2)
class(contoh_char_3)

# Numeric
contoh_num_1 = 123
contoh_num_2 = 5.6
contoh_num_3 = 0.2

class(contoh_num_1)
class(contoh_num_2)
class(contoh_num_3)

# Factor
contoh_factor_1 = as.factor(c("Pria", "Wanita", "Wanita"))
contoh_factor_2 = as.factor("Pria", "Wanita", "Wanita")

class(contoh_factor_1)
str(contoh_factor_1)

# Tanggal
contoh_bukan_tanggal = "01/01/2020"
class(contoh_bukan_tanggal)

contoh_tanggal_1 = as.Date("01/01/2020", format = "%d/%m/%Y")
contoh_tanggal_2 = as.Date(43831, origin = "1899-12-30")

class(contoh_tanggal_1)
class(contoh_tanggal_2)

# Logical
contoh_logical_1 = TRUE
contoh_logical_2 = FALSE

class(contoh_logical_1)
class(contoh_logical_2)

# NA / NULL

contoh_null_1 = data.frame(contoh = c(1,2,3, NA))
contoh_null_2 = data.frame(contoh = c(1,2,3, 0))

sum(contoh_null_1)
sum(contoh_null_2)

### Operator

# Assigning Value

a <- 3
a = 2

# Math Opertor

tambah <- 2 + 2
kurang <- 2 - 2
kali <- 2*2
bagi <- 2 / 2
sisa <- 2 %% 2
pangkat_1 <- 2^2
pangkat_2 <- 2**2

### STRUCTURE OF DATA

# Single Value
sampah_bulan_januari <- 2000
sampah_bulan_februari <- 3000
sampah_bulan_maret <- 4000
sampah_bulan_april <- 4500

# Vector
sampah_perquarter_1 <- c(sampah_bulan_januari, sampah_bulan_februari, sampah_bulan_maret)
sampah_perquarter_1

contoh_data_banyak <- seq(1:10000)
print(contoh_data_banyak)

# Data Frame
sampah_perquarter_2 <- data.frame(Bulan = c("Januari", "Februari", "Maret"),
                                  Jumlah_Masuk = sampah_perquarter_1)
str(sampah_perquarter_2)

list_bulan <- sampah_perquarter_2$Bulan
print(list_bulan)

# List
sampah_perquarter_3 <- data.frame(Bulan = c("April", "Mei", "Juni"),
                                  Jumlah_Masuk = sampah_perquarter_1)

sampah_setengah_tahun <- list("quarter_1" = sampah_perquarter_2, "quarter_2" = sampah_perquarter_3)
print(sampah_setengah_tahun)

### FUNCTION

sum(1, 2)

sum(1, 2, NA)

sum(1, 2, NA, na.rm = FALSE)

sum(1, 5, NA, na.rm = TRUE)

penjumlahan <- function(a, b, c = 2) {
  hasil = a + b + c
  return(hasil)
}

penjumlahan(a = 1, b = 2)

penjumlahan(a = 1, b = 2, c = 100)

### ?help

?mean
?data.frame()

# How to generate Odd Sequence in R: https://www.sarpublisher.com/generating-even-odd-numbers-using-r/

seq(1,by=2, len=100)

# How to add new row in data frame

df <- data.frame(hello = "hi", goodbye = "bye")

de <- data.frame(hello = "hola", goodbye = "ciao")

combined_df <- rbind(df, de)


### PACKAGES

install.packages("tidyverse")

library(tidyverse)

### PIPE

x <- c(0.109, 0.359, 0.63, 0.996, 0.515, 0.142, 0.017, 0.829, 0.907)

# Compute the logarithm of `x`, iterated differences, 
# compute the exponential function and round the result

# Without PIPE

round(exp(diff(log(x))), 1)

hasil_log = log(x)
hasil_diff = diff(hasil_log)
hasil_exp = exp(hasil_diff)
hasil_round = round(hasil_exp, 1)
hasil_round

# With PIPE

x %>% 
  log() %>%
  diff() %>%
  exp() %>%
  round(1)

### CONDITIONAL AND LOOP

# If Else

sampah_masuk <- 2000

if(sampah_masuk > 2000){
  print("Diatas Rata2")
} else if(sampah_masuk == 2000) {
  print("Pas Rata2")
} else {
  print("Dibawah Rata2")
}

# for loop

x
for(i in x) {
  print(i)
}

for(i in c(1:10)) {
  print(i*2)
}

# while

i = 0
while(i < 10){
  print(i)
  Sys.sleep(0.5)
  i = i + 1
}
