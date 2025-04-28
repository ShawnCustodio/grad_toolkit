#Mock Data: Students' Exam Scores
students <- data.frame(
    name = c("Alice", "Bob", "Charlie", "Diana", "Eve"),
    math_score = c(88, 45, 78, 92, 56),
    english_score = c(90, 55, 81, 89, 65)
)

#Print data frame
cat("Original Students Data:\n")
print(students)

#Initialize an empty column for Results
students$result <- ""

#For loop to assign Pass/Fail
for(i in 1:nrow(students)){
    #Average score
    avg <- (students$math_score[i] + students$english_score[i]) / 2

    if(avg >= 60) {
        students$result[i] <- "Pass"
    } else {
        students$result[i] <- "Fail"
    }
}

library(dplyr)
#Switch case like structure
students$grade <- case_when(
    (students$math_score + students$english_score) / 2 >= 90  ~ "A",
    (students$math_score + students$english_score) / 2 >= 80  ~ "B",
    (students$math_score + students$english_score) / 2 >= 70  ~ "C",
    (students$math_score + students$english_score) / 2 >= 60  ~ "D",
    TRUE ~ "F"
)

    


cat("\nFinal Students Data (with Results and Grades):\n")
print(students)