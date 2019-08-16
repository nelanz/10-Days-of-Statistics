# Second challenge for Day 1 of 10 Days of Statistics
# Calculating the standard deviation
data <- suppressWarnings(readLines(file("stdin", open = "r")))
data <- as.matrix(as.data.frame(t(data)))

n <- as.integer(data[1])
values <- as.integer(strsplit(data[2:n][1], " ")[[1]])

miu <- mean(values)
sigma <- sqrt((sum((values - miu)^2))/n)

cat(format(round(sigma, 1), nsmall = 1))

