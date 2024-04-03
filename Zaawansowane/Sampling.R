sample_statistics <- function(data, n, k, column) {
  #' Generate k samples of size n, calculate mean, standard deviation, and median for each sample,
  #' and create a data frame with these statistics.
  #'
  #' @param data A data frame containing the original data.
  #' @param n Size of each sample.
  #' @param k Number of samples to generate.
  #' @param column The column from the data on which to perform the sampling and calculations.
  #'
  #' @return A data frame containing the mean, standard deviation, and median for each of the k samples.
  
  means <- vector("numeric", k)
  stds <- vector("numeric", k)
  medians <- vector("numeric", k)
  
  for (i in seq_len(k)) {
    sample <- sample(data[[column]], n, replace = TRUE)
    means[i] <- mean(sample)
    stds[i] <- sd(sample)
    medians[i] <- median(sample)
  }
  
  stats_df <- data.frame(
    Mean = means,
    "StandardDeviation" = stds,
    Median = medians
  )
  
  return(stats_df)
}

# Usage:

stats_df <- sample_statistics(Frieren, n = 100, k = 1000, column = 'Mana')

# Distributions 

library(ggplot2)

# True population parameters
mu <- 80.82
sigma <- 32.07

# Estimated mean and standard deviation from the samples
est_mean <- mean(stats_df$Mean)
est_sd <- mean(stats_df$StandardDeviation)

# Histogram for sample means, true population mean, and estimated mean
ggplot(data = stats_df, aes(x = Mean)) +
  geom_histogram(aes(y = ..density..), bins = 30, fill = "deepskyblue", color = "black", alpha = 0.45) +
  geom_vline(xintercept = mu, color = "red", linetype = "dashed", size = 1) +
  geom_vline(xintercept = est_mean, color = "blue", linetype = "dotted", size = 1) +
  labs(title = "Rozkład oszacowanych średni z 1000 prób o n = 30",
       x = "Wartość oszcowanej średniej (średnia mana)",
       y = "") +
  scale_y_continuous(labels = NULL) +
  theme_minimal()

# Histogram for sample standard deviations, true population standard deviation, and estimated standard deviation
ggplot(data = stats_df, aes(x = StandardDeviation)) +
  geom_histogram(aes(y = ..density..), bins = 30, fill = "orange", color = "black", alpha = 0.5) +
  geom_vline(xintercept = sigma, color = "red", linetype = "dashed", size = 1) +
  geom_vline(xintercept = est_sd, color = "green", linetype = "dotted", size = 1) +
  labs(title = "Rozkład oszacowanych odchyleń standardowych z różnych prób o identycznym n",
       x = "Wartość oszacowanego odchylenia standardowego",
       y = "") +
  scale_y_continuous(labels = NULL) +
  theme_minimal()

