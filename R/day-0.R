# Code for Day 0 of Hackerrank's 10 Days of Ststistics
# Program that calculates mean, median and mode
data <- suppressWarnings(readLines(file("stdin", open = "r")))
data <- as.matrix(as.data.frame(t(data)))

n <- as.integer(data[1])
array <-as.integer(strsplit(data[2:n][1], " ")[[1]])


get_mean <- mean(array)
get_median <- median(array)

# sorting array to get smallest value in mode when there are same occurences of different values
array <- sort(array)

get_mode <- function(arr) {
  unique_values <- unique(arr)
  unique_values[which.max(tabulate(match(arr, unique_values)))]
}

# output
cat(round(get_mean, 1), round(get_median, 1), get_mode(array), sep = "\n")

