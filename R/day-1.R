# First challenge for Day 1 of 10 Days of Statistics
# Calculating first, second and third quartile
data <- suppressWarnings(readLines(file("stdin", open = "r")))
data <- as.matrix(as.data.frame(t(data)))

n <- as.integer(data[1])
values <- as.integer(strsplit(data[2:n][1], " ")[[1]])

# function for counting first, second and third quartile
quartile <- function(arr) {
  arr <- sort(arr)
  div_point <- (n+1)/2
  if(floor(div_point) != div_point) {
    lower_part <- div_point - 1/2
    upper_part <- div_point + 1/2
  } else {
    lower_part <- div_point - 1
    upper_part <- div_point + 1
  }
  cat(Q1 <- median(arr[1:lower_part]), Q2 <- median(arr), Q3 <- median(arr[upper_part:n]), sep = "\n")
}

quartile(values)

