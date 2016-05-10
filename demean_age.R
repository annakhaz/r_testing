args <- commandArgs(trailingOnly = TRUE)

demographics <- read.csv(file=args[1], head=TRUE, sep="\t")
age <- demographics$age
mean_age <- sum(age)/length(age)
stopifnot(mean_age < 100) #equiv to assert
stopifnot(mean_age > 10)

demean_age <- age - mean_age

write.table(demean_age, file="age_demeaned.tsv", row.names=FALSE, col.names=FALSE, sep="\t")

print("done!")