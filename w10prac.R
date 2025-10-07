data <- read.csv("epiSEIHCRD_combAge.csv")
library(ggplot2)
subset_data <- subset(data, date >= "2020-07-01" & date <= "2020-12-31")
ggplot(subset_data, aes(x = date)) +
	geom_line(y = hospital_beds, color = "red", size = 1) +
	geom_line(y = critical, color = "pink", size = 1) +
	geom_line(y = dead, color = "yellow", size = 1) +
	geom_point(color = "blue", size = 1.5) +
	labs(title = "the number of hospital beds needed between July and December of 2020", x = "Month", y = "hospital beds needed(red line)") +
	scale_y_sqrt() + 
	theme_minimal(base_size = 13)

