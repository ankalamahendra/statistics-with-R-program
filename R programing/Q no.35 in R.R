# Load the ChickWeight dataset
data(ChickWeight)

# (i) Order the data frame in ascending order by "weight" grouped by "diet"
ordered_df <- ChickWeight[order(ChickWeight$weight, ChickWeight$diet), ]

# Extract the last 6 records
last_6_records <- tail(ordered_df, 6)

# (ii) a. Perform melting function based on "Chick", "Time", "Diet" features as ID variables
library(reshape2)
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))

# (ii) b. Perform cast function to display the mean value of weight grouped by Diet
casted_mean <- dcast(melted_data, Diet ~ ., fun.aggregate = mean, value.var = "value")

# (ii) c. Perform cast function to display the mode of weight grouped by Diet
library(modeest)
mode_function <- function(x) {
  if (length(x) == 1) {
    return(x)
  } else {
    return(mlv(x)$moda)
  }
}

casted_mode <- dcast(melted_data, Diet ~ ., fun.aggregate = mode_function, value.var = "value")
