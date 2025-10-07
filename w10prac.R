data <- read.csv("epiSEIHCRD_combAge.csv")
library(ggplot2)
subset_data <- subset(data, date >= "2020-07-01" & date <= "2020-12-31")
ggplot(subset_data, aes(x = date, y = hospital_beds)) +
	geom_line(color = "pink", size = 1) +
	geom_point(color = "blue", size = 1.5) +
	labs(title = "the number of hospital beds needed between July and December of 2020", x = "Date", y = "hospital beds needed") + 
	theme_minimal(base_size = 13)

