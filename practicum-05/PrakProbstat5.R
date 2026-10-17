
rafi <- read.table(pipe("pbpaste"), sep = "\t", header = TRUE)


str(rafi)

rafi$Volume <- gsub(",", ".", rafi$Volume)

rafi$Volume <- as.numeric(rafi$Volume)

is.numeric(rafi$Volume)
mean_value <- mean(rafi$Volume, na.rm = TRUE)
print(mean_value)
t_test_result <- t.test(rafi$Volume, mu = 10)
print(t_test_result)
