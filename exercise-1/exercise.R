# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games of their season
# Hint: (google "Seahawks scores")
seahawks.for <- c(9, 12, 27, 46, 16)
# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
seahawks.against <- c(17, 9, 33, 18, 10)

# Combine your two vectors into a dataframe
data <- data.frame(seahawks.for,seahawks.against)

# Create a new column "diff" that is the difference in points
data$diff <- data$seahawks.for - data$seahawks.against 

# Create a new column "won" which is TRUE if the Seahawks wom
data$won <- data$diff>0

# Create a vector of the opponents
opponents <- c("Packers", "49ers", "Titans", "Colts", "Rams")

# Assign your dataframe rownames of their opponents
rownames(data) <- opponents
