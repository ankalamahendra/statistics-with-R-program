# Call the built-in dataset 'airquality'
data(airquality)

# Check if 'airquality' is a data frame
is_df <- is.data.frame(airquality)
print(paste("Is 'airquality' a data frame?", is_df))

# Order the entire data frame by the first and second column
ordered_airquality <- airquality[order(airquality$Month, airquality$Day), ]

# Remove the variables 'Solar.R' and 'Wind' from the data frame
cleaned_airquality <- subset(ordered_airquality, select = -c(Solar.R, Wind))

# Display the cleaned data frame
print(head(cleaned_airquality))
