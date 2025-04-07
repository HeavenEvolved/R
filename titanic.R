data("Titanic")
View(Titanic)

df <- data.frame(Titanic)

print(head(df))
print(summary(df))

print(length(df[, "Sex"]))

x <- length(df[, "Sex"])

# How many people were on the Titanic
on_board <- sum(df[, "Freq"])
passengers <- 0
print(paste("Number of people on board: ", on_board))
for (g in 1:x) {
  if (df[g, "Class"] != "Crew") {
    passengers <- passengers + df[g, "Freq"]    
  }
}
print(paste("Number of passengers on board: ", passengers))
crew <- on_board - passengers
print(paste("Number of crew on board: ", crew))

child_passengers <- 0
child_crew <- 0

for (g in 1:x) {
  if (df[g, "Age"] == "Child") {
    if (df[g, "Class"] == "Crew") {
      child_crew <- child_crew
    }
  }
}

# How many people survived the accident
# Survival Counts
survived <- 0
not_survived <- 0

for (g in 1:) {
  if (g == "No") {
    not_survived <- not_survived + 1
  }
  else {
    survived <- survived + 1
  }
}

print(paste("Survived: ", survived))
print(paste("Not Survived: ", not_survived))

# How many children are there

# How many females are on board
# How many female children are on board
# How many females survived

# How many males survived
# How many males are on board
# How many male children are on board

# Which all visualisations will you apply