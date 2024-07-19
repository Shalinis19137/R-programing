# Generating sample dataset
set.seed(123)
data <- rnorm(100, mean = 50, sd = 10)  # Sample data

# Adding outliers
data <- c(data, 120, 130)  # Adding outliers

# Creating a DataFrame

df <- data.frame(Value = data)

# Loading necessary libraries
library(ggplot2)

# Box plot
boxplot <- ggplot(df, aes(y = Value)) +
  geom_boxplot() +
  labs(title = "Box Plot of Sample Dataset", x = "Value") +
  theme_minimal()
print(boxplot)

# Scatter plot

scatterplot <- ggplot(df, aes(x = seq(1, length(Value)), y = Value)) +
  geom_point() +
  labs(title = "Scatter Plot of Sample Dataset", x = "Index", y = "Value") +
  theme_minimal()
print(scatterplot)
# Histogram

histogram <- ggplot(df, aes(x = Value)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Sample Dataset", x = "Value", y = "Frequency") +
  theme_minimal()
print(histogram)

# Bar chart

bar_chart <- ggplot(df, aes(x = as.factor(Value))) +
  geom_bar(fill = "skyblue") +
  labs(title = "Bar Chart of Sample Dataset", x = "Value", y = "Count") +
  theme_minimal()
print(bar_chart)

# Pie chart
pie_chart <- ggplot(df, aes(x = "", fill = cut(Value, breaks = 10))) +
  geom_bar(width = 1) +
  coord_polar("y", start = 0) +
  labs(title = "Pie Chart of Sample Dataset") +
  theme_minimal()
print(pie_chart)

