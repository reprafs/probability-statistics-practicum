df <- read.delim(pipe("pbpaste"))

dt <- as.table(as.matrix(df))
dt

chisq <- chisq.test(df)
chisq

chisq$observed

round(chisq$expected, 2)

chisq$p.value
