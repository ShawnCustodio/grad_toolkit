#Function to expand (1+x)^n and get coefficients
binomial_coefficient <- function(n){
    return(choose(n, 0:n))
}

n <- 5

coefficients <- binomial_coefficient(n)

cat(paste0("(1+x)^", n, " expansion coefficients (Binomial Coefficients):\n"))
print(coefficients)
