bloodtypes <- c("O", "O", "A", "A", "O", "B", "O", "B", "A", "O", "AB", "B", "A", "B", "AB", "O", "O", "A", "A", "O", "AB", "O", "A", "B", "A", "O", "A", "A", "O", "A", "O", "A", "O", "AB", "A", "O", "B", "A", "A", "O", "O", "O", "O", "A", "O", "O", "A", "O", "A", "O")

# Frequency
counts <-table(bloodtypes)
print(counts)
barplot(counts, main="Blood Types of 50 Patients", 
   xlab="Blood Type", ylab="Frequency", ylim = c(0,25))

# Relative Frequency
n=sum(counts)
rel=counts/n
print(rel)
barplot(rel, main="Blood Types of 50 Patients", 
   xlab="Blood Type", ylab="Relative Frequency", ylim = c(0,0.5))

# From table
counts2 <- c(18, 6, 22, 4)
names(counts2) <- c("A", "B", "O", "AB")
print(counts2)
barplot(counts2, main="Blood Types of 50 Patients", 
   xlab="Blood Type", ylab="Frequency", ylim = c(0,25))

# Pareto Chart
counts3 <- sort(counts2, decreasing = TRUE)
print(counts3)
barplot(counts3, main="Blood Types of 50 Patients", 
   xlab="Blood Type", ylab="Frequency", ylim = c(0,25))

# Side-by-Side Bar
usvschile <- c(0.44, 0.87, 0.42, 0.09, 0.1, 0.03, 0.04, 0.01)
counts4 <- array(usvschile, dim = c(2,4))
dimnames(counts4) <- list(c("US", "Chile"), c("O", "A", "B", "AB"))
print(counts4)
barplot(counts4, main="Blood Types of 50 Patients", 
   xlab="Blood Type", ylab="Relative Frequency", ylim = c(0,1), beside = TRUE, legend.text = TRUE)
