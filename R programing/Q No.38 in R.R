data("Titanic")

Titanic_df <- as.data.frame(Titanic)

barplot(table(Titanic_df$Survived, Titanic_df$Class), beside = TRUE, 
        main = "Survival Status on Titanic by Passenger Class",
        xlab = "Passenger Class", ylab = "Number of Passengers",
        legend = c("Did not survive", "Survived"),
        col = c("red", "green"))

survived_data <- subset(Titanic_df, Survived == "Yes")

barplot(table(survived_data$Sex, survived_data$Class), beside = TRUE,
        main = "Survival of Titanic Passengers by Gender and Class",
        xlab = "Passenger Class", ylab = "Number of Passengers",
        legend = c("Female", "Male"),
        col = c("pink", "lightblue"))

hist(Titanic_df$Age, breaks = 20, col = "skyblue", 
     main = "Distribution of Age on Titanic",
     xlab = "Age", ylab = "Frequency")
