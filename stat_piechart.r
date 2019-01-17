bloodtypes <- c("O", "O", "A", "A", "O", "B", "O", "B", "A", "O", "AB", "B", "A", "B", "AB", "O", "O", "A", "A", "O", "AB", "O", "A", "B", "A", "O", "A", "A", "O", "A", "O", "A", "O", "AB", "A", "O", "B", "A", "A", "O", "O", "O", "O", "A", "O", "O", "A", "O", "A", "O")

# Frequency
counts <-table(bloodtypes)

lbls <- names(counts)
pct <- round(counts/sum(counts)*100)
lbls <- paste(lbls, " (", sep = "")
lbls <- paste(lbls, pct)
lbls <- paste(lbls, "% )", sep = "")

pie(counts, labels = lbls, main = "Blood Types of 50 Patients")
