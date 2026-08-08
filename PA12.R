# PA12
# Jelena Radovanovic
# 08/08/2026
# Using ggplot2 to create a line chart and show relationship,
#between disp and mpg.

install.packages("ggplot2")
library(ggplot2)

?mtcars

# Converting cyl to a factor
mtcars$cyl <- as.factor(mtcars$cyl)

#Plotting engine displacement (disp) vs. miles per gallon (mpg) 
ggplot(data=mtcars)+
  geom_line(
    mapping = aes(x=disp, y=mpg, color = cyl, group = cyl),
      alpha = 0.8
  ) +
  scale_color_discrete(name = "Number of Cylinders") + 
  labs(
    title = "Engine displacement vs. Miles Per Gallon",
    subtitle = "MPG variations across engine displacement and cylinders",
    x = "Engine Displacement (Cubic Inches)",
    y = "Miles Per Gallon (MPG)",
    caption = "Data from mtcars Dataset"
    ) +
  theme_minimal() +
  theme(
    plot.title = element_text(size = 16,face = "bold"),
    plot.subtitle = element_text(size = 12),
    legend.position = "bottom"
  )
  
