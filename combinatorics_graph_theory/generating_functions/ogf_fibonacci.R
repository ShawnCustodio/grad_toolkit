# The Fibonacci sequence:
# F(x) = x / (1 - x - x^2)

terms <- 10

fib <-numeric(terms)
fib[1] <- 1
fib[2] <- 1

for(i in 3:terms){
    fib[i] <- fib[i-1] + fib[i-2]
}

cat("First", terms, "Fibonacci numbers (OGF): \n")
print(fib)