# Second challenge for Day 0 of 10 Days of Statistics
# Calculating weighted mean. Even though there is special build-in function the point was to 
# write the function "mathematically'

data <- suppressWarnings(readLines(file("stdin", open = "r")))
data <- as.matrix(as.data.frame(t(data)))

n <- as.integer(data[1])
values <- as.integer(strsplit(data[2:n][1], " ")[[1]])
weights <- as.integer(strsplit(data[3:n][1], " ")[[1]])

# using already build-in function
# weighted.mean(values, weights)

# using mathematics
weighted_mean <- sum((values * weights)/sum(weights))

#output
cat(format(round(weighted_mean, 1), nsmall = 1))
