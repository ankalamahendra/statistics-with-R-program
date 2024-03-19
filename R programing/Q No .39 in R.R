# Load the USArrests dataset
data("USArrests")

# (i) a. Summary of the dataset
summary(USArrests)

# (i) b. State with the largest total number of rape
largest_rape_state <- rownames(USArrests)[which.max(USArrests$Rape)]
cat("State with the largest total number of rape:", largest_rape_state, "\n")

# (i) c. States with max & min crime rates for murder
max_murder_state <- rownames(USArrests)[which.max(USArrests$Murder)]
min_murder_state <- rownames(USArrests)[which.min(USArrests$Murder)]
cat("State with the max crime rate for murder:", max_murder_state, "\n")
cat("State with the min crime rate for murder:", min_murder_state, "\n")

# (ii) a. Correlation among the features
correlation_matrix <- cor(USArrests)
print("Correlation matrix:")
print(correlation_matrix)

# (ii) b. States with assault arrests more than median
median_assault <- median(USArrests$Assault)
states_above_median_assault <- rownames(USArrests)[USArrests$Assault > median_assault]
cat("States with assault arrests more than median:", states_above_median_assault, "\n")

# (ii) c. States in the bottom 25% of murder
bottom_25_percent_murder <- rownames(USArrests)[USArrests$Murder < quantile(USArrests$Murder, 0.25)]
cat("States in the bottom 25% of murder:", bottom_25_percent_murder, "\n")

# (iii) a. Histogram and density plot of murder arrests
hist(USArrests$Murder, main = "Histogram of Murder Arrests", xlab = "Murder Arrests")
lines(density(USArrests$Murder), col = "red")

# (iii) b. Relationship between murder arrest rate and proportion of urban population
plot(USArrests$UrbanPop, USArrests$Murder, xlab = "Urban Population (%)", ylab = "Murder Arrests",
     main = "Relationship between Murder Arrest Rate and Urban Population")
points(USArrests$UrbanPop, USArrests$Murder, col = USArrests$Assault, pch = 19, cex = 1.5)

# (iii) c. Bar graph showing murder rate for each state
barplot(USArrests$Murder, names.arg = rownames(USArrests), xlab = "State", ylab = "Murder Arrests",
        main = "Murder Rate for Each State", col = "darkblue")
