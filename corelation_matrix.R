# Generating sample dataset with categorical variable
set.seed(123)
n <- 100
data <- data.frame(
  Var1 = rnorm(n, mean = 50, sd = 10),
  Var2 = rnorm(n, mean = 60, sd = 15),
  Category = sample(c("A", "B", "C"), n, replace = TRUE)
)

# Compute correlation matrix
correlation_matrix <- cor(data[, c("Var1", "Var2")])

# Print correlation matrix
print(correlation_matrix)

# Plot correlation matrix as heatmap
library(ggplot2)
library(reshape2) # For melting data
melted_correlation <- melt(correlation_matrix)
heatmap <- ggplot(melted_correlation, aes(Var1, Var2, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_gradient2(low = "blue", mid = "white", high = "red", midpoint = 0, limit = c(-1, 1), space = "Lab", name="Correlation") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, size = 12, hjust = 1))
print(heatmap)

# ANOVA
# Assuming Var1 is the dependent variable and Category is the independent variable
anova_result <- aov(Var1 ~ Category, data = data)
print(summary(anova_result))

