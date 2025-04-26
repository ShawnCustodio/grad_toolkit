#Combinatorics and Permutation Understanding in R

# Define functions for factorial, permutations and combinations

#Function to calcualte factorial
factorial <- function(n) {
    if(n==0) return(1) #Base case
    return(prod(1:n)) #Recursive case
}

#Function to calculate permutaitons (nPr)
permutations <- function(n,r) {
    return(factorial(n) / factorial(n-r))
}

combinations <- function(n, r){
    return(factorial(n) / (factorial(r) * factorial(n - r)))
}

n <- 5
r <- 3

#Permutation (nPr)
cat("Permutation (5P3):", permutations(n, r), "\n")

#Combination (nCr)
cat("Combination (5C3):", combinations(n, r), "\n")

#Binomial Coefficient Example: C(n, r)
binomial_coefficient <- combinations(10,4)
cat("Binomial Coefficient (10C4):", binomial_coefficient, "\n")
