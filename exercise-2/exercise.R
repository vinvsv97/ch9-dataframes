# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
employees <- paste("Employee", 1:100)

# Create a vector of 2014 salaries using the runif function
salaries1 <- runif(100, min = 50000, max = 150000)

# Create a vector of 2015 salaries that are typically higher than the 2014 salaires (use runif again)
salaries2 <- runif(100, min = 80000, max = 200000)

# Create a data.frame 'salaries' by combining the vectors you just made
salaries <- data.frame(employees,salaries1,salaries2)

# Create a column 'raise' that stores the size of the raise between 2014 and 2015
salaries$raise <- salaries$salaries2 - salaries$salaries1

# Create a column 'got.raise' that is TRUE if the person got a raise
salaries$got.raise <- salaries$raise > 0

# Retrieve values from your data frame to answer the following questions:

# What was the 2015 salary of employee 57
salaries$salaries2[57]

# How many employees got a raise?
nrow(salaries['got.raise'])

# What was the value of the highest raise?
max(salaries$raise)

# What was the name of the employee who recieved the highest raise?
salaries['employees', salaries$raise == max(salaries$raise)]

# What was the largest decrease in salaries between the two years?


# What was the name of the employee who recieved largest decrease in salary?


# What was the average salary increase?


### Bonus ###

# Write a .csv file of your salaries to your working directory


# For people who did not get a raise, how much money did they lose?


# Is that what you expected them to lose?

### Double Bonus (no answer given) ###

# Repeat the above experiment 100 times, tracking the loss each time.
# Does the average loss equal what you expect?
# What about 10,000 times?
