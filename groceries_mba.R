
# Load necessary libraries

install.packages("arules")
install.packages("arulesViz")
library(arules)
library(arulesViz)

#built-in Groceries dataset

data("Groceries")
summary(Groceries)

# Number of transactions
length(Groceries)

# Number of items
itemFrequencyPlot(Groceries, topN = 20, type = "absolute", col = rainbow(20),
                  main = "Top 20 Sold Items")

# Default rules
rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.2))
summary(rules)

# Inspect top 10 rules

inspect(head(sort(rules, by = "lift"), 10))

#Filter and Customize Rules
#More restrictive rules (stronger)

rules_filtered <- apriori(Groceries,
                          parameter = list(supp = 0.005, conf = 0.3, minlen = 2),
                          appearance = list(rhs = c("whole milk"), default = "lhs"))

rules_filtered <- sort(rules_filtered, by = "lift", decreasing = TRUE)
inspect(head(rules_filtered, 10))

#Remove Redundant Rules
redundant <- is.redundant(rules_filtered)
rules_cleaned <- rules_filtered[!redundant]
inspect(rules_cleaned)

# Scatter plot
plot(rules_cleaned, method = "scatterplot", measure = c("support", "lift"), shading = "confidence")

# Graph plot
plot(rules_cleaned, method = "graph", engine = "htmlwidget")

# Grouped matrix
plot(rules_cleaned, method = "grouped")


