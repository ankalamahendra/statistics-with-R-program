# Assuming you have the 'airquality' dataset available

# (i) Get the Summary Statistics of airquality dataset
summary_stats <- summary(airquality)

# (ii) Melt airquality dataset and display as a long-format data
library(reshape2)
melted_data_long <- melt(airquality)

# (iii) Melt airquality data and specify month and day to be “ID variables”
melted_data_long_with_id <- melt(airquality, id.vars = c("Month", "Day"))

# (iv) Cast the molten airquality dataset with respect to month and date features
casted_data <- dcast(melted_data_long_with_id, Month + Day ~ variable)

# (v) Use cast function appropriately and compute the average of Ozone, Solar.R, Wind, and temperature per month
average_monthly_data <- dcast(melted_data_long, Month ~ variable, fun.aggregate = mean)
