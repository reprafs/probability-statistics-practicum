# Copy data dari clipboard (misalnya dari Excel atau tabel lain)
df <- read.delim(pipe("pbpaste"))

# Ubah ke table
dt <- as.table(as.matrix(df))
print(dt)

# Uji Chi-Square
chisq <- chisq.test(df)
print(chisq)

# Tampilkan nilai observasi
print(chisq$observed)

# Tampilkan expected value yang dibulatkan ke 2 desimal
print(round(chisq$expected, 2))

# Tampilkan p-value
print(chisq$p.value)

# Uji signifikansi pada tarif nyata 5%
if (chisq$p.value < 0.05) {
  cat("Hasil signifikan (p =", round(chisq$p.value, 4), ") pada tingkat signifikansi 5%\n")
} else {
  cat("Hasil tidak signifikan (p =", round(chisq$p.value, 4), ") pada tingkat signifikansi 5%\n")
}

