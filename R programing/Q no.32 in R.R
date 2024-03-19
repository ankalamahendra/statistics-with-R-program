# Load the airquality dataset
data(airquality)

# (i) Compute the mean temperature (without using built-in function)
mean_temperature <- sum(airquality$Temp) / length(airquality$Temp)

# (ii) Extract the first five rows from airquality
first_five_rows <- airquality[1:5, ]

# (iii) Extract all columns from airquality except Temp and Wind
selected_columns <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]

# (iv) Identify the coldest day during the period
coldest_day <- airquality[which.min(airquality$Temp), ]

# (v) Count how many days the wind speed was greater than 17 mph
wind_gt_17_count <- sum(airquality$Wind > 17, na.rm = TRUE)
