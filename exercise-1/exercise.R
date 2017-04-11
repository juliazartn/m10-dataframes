# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
scored <- c(12, 3, 37,27)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
against <- c(10, 9, 18, 17)

# Combine your two vectors into a dataframe
game.scores <- data.frame(scored, against)


# Create a new column "diff" that is the difference in points
game.scores$diff <- c(scored - against)

# Create a new column "won" which is TRUE if the Seahawks wom
game.scores$won <- c(scored > against)

# Create a vector of the opponents
opponents <- c("Dolphins", "Rams", "49ers", "Jets")

# Assign your dataframe rownames of their opponents
rownames(game.scores) <- opponents

