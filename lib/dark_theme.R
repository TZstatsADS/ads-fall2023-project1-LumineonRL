library(ggplot2)

# A dark theme for ggplot

dark_theme <- function() {
  theme_minimal() +
    theme(
      panel.background = element_rect(fill = "black"),
      plot.background = element_rect(fill = "black"),
      text = element_text(color = "white"),
      axis.text = element_text(color = "white"),
      axis.line = element_line(color = "white"),
      axis.title = element_text(color = "white"),
      legend.title = element_text(color = "white"),
      legend.text = element_text(color = "white"),
      legend.background = element_rect(fill = "black"),
      legend.key = element_blank(),
      plot.title = element_text(color = "white", size = 20, hjust = 0.5),
      strip.text = element_text(color = "white", size = 15, hjust = 0.5)
    )
}