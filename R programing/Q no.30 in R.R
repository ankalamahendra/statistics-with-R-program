# Load the required libraries
library(caTools)
library(nnet)

# Set seed for reproducibility
set.seed(123)

# Load the iris dataset
data(iris)

# Randomly sample the dataset for training and testing (80% training, 20% testing)
split <- sample.split(iris$Species, SplitRatio = 0.8)
train_data <- subset(iris, split == TRUE)
test_data <- subset(iris, split == FALSE)

# Create logistic regression model with train data
model <- multinom(Species ~ Petal.Length + Petal.Width, data = train_data)

# Predict the probabilities using test data
predicted_probabilities <- predict(model, newdata = test_data, type = "probs")

# Convert predicted probabilities to predicted class (species)
predicted_species <- colnames(predicted_probabilities)[apply(predicted_probabilities, 1, which.max)]

# Create confusion matrix
conf_matrix <- table(test_data$Species, predicted_species)

# Output the confusion matrix
conf_matrix
