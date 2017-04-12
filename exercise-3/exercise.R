# Exercise 3: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data(USPersonalExpenditure)

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
us.dataframe <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
us.dataframe.col <- colnames(us.dataframe)

# Why are they so strange?
#you can't have a column name with only numbers

# What are the row names of your dataframe?
us.dataframe.row <- rownames(us.dataframe)

# Create a column `category` that is equal to your rownames
us.dataframe$category <- rownames(us.dataframe)

# How much money was spent on personal care in 1940?
personal.care1960 <- us.dataframe['Personal Care', 'X1940']

# How much money was spent on Food and Tobacco in 1960
food1960 <- us.dataframe['Food and Tobacco', 'X1960']

# What was the highest expenditure category in 1960?
max1960 <- max(us.dataframe['X1960'])

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
max.spending <- function(year) {
  colname <- paste("X", year, sep="")
  maxval <- max(us.dataframe[colname])
  return (maxval)
}

# Using your function, determine the highest spending category of each year
max.spending(1940)
max.spending(1945)
max.spending(1950)
max.spending(1960)

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
highest.spending <- list()
for(year in c(1940, 1945, 1950, 1960)) {
  colname <- paste("X", year, sep="")
  highest.spending[colname] <- max.spending(year)
}



