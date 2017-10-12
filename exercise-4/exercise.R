# Exercise 4: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
# Make sure *not* to read the strings as factors
grants <- read.csv("data/gates_money.csv", stringsAsFactors = FALSE)
# Use the View function to look at your data
View(grants)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grants$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
org <- grants$organization

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean <- mean(spending)

# What was the dollar amount of the largest grant?
maxi <- max(spending)

# What was the dollar amount of the smallest grant?
mini <- min(spending)

# Which organization received the largest grant?
large.org <- grants[grants$total_amount == maxi, 'organization']

# Which organization received the smallest grant?
small.org <- grants[grants$total_amount == mini, 'organization']

# How many grants were awarded in 2010?
grants.2010 <- nrow(grants[grants$start_year == 2010,])


