# Market Basket Analysis on Groceries Dataset

This project performs Market Basket Analysis using the Apriori algorithm on the built-in `Groceries` dataset in R.

## Objectives
- Discover frequent itemsets and association rules.
- Filter rules by support, confidence, and lift.
- Visualize rules using graphs and item frequency plots.

## Dataset
- **Groceries** dataset from arules package.
- Contains 9,835 transactions and 169 unique items from a German supermarket.

## Techniques Used
- Apriori algorithm (via `arules` package)
- Support, Confidence, Lift
- Rule pruning (redundancy removal)
- Visualization (via `arulesViz`)

## Files
- `groceries_mba.R` — full script with rule mining and visualization.
- `output/`  — exported plots.

## Packages Used
- `arules`
- `arulesViz`

## Author
This project was created as part of my Data Science learning journey.  
Feel free to connect: linkedin.com/in/aslialacal/