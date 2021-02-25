## Abstract ----------------
  # Using histograms, boxplots and scatter plots, I demonstrate the distributions of different car's cylinders in mtcars.
  # The analysis focuses on 4, 7, and 8 cylinder cars. We examine how the variables differ due to the cylinders in a car.
  # I also added scatterplots to understand the relationship between variables.
  # GitHub Link: (https://github.com/koeneralex/visualanalytics-week7-distributions)

## Instructions -------------
  # Create your own visual analytics based on Distribution analysis.
  # The visual will follow our textbook recommendation to use grid to enhance the comparisons between scatter plots or your variables.

## Packages -----------------
library(tidyverse)


## Code ---------------------

carsDF <- as.data.frame(mtcars)


## Visualizations -----------

# Cylinders histogram.
ggplot(carsDF, aes(x=cyl)) +
  geom_histogram(bins = 5) +
  labs(title="Cylinders Histogram", x="Cylinders in Car",y="Number of Cars")

# Cylinders vs Horsepower boxplot.
ggplot(carsDF, aes(x=cyl, y=hp, group=cyl)) +
  geom_boxplot() +
  labs(title="Cylinders vs Horsepower", x="Cylinders in Car",y="Horsepower")

# Cylinders vs Weight boxplot.
ggplot(carsDF, aes(x=cyl, y=wt, group=cyl)) +
  geom_boxplot() +
  labs(title="Cylinders vs Weight", x="Cylinders in Car",y="Weight in Thousands of Lbs")

# Cylinders vs Miles per Gallon boxplot.
ggplot(carsDF, aes(x=cyl, y=mpg, group=cyl)) +
  geom_boxplot() +
  labs(title="Cylinders vs Miles per Gallon", x="Cylinders in Car",y="Miles per Gallon")


# Miles per Gallon vs Horsepower scatterplot.
ggplot(carsDF, aes(x=mpg, y=hp)) +
  geom_point() +
  labs(title="Miles per Gallon vs Horsepower", x="Miles per Gallon",y="Horsepower")

# Miles per Gallon vs Weight scatterplot.
ggplot(carsDF, aes(x=mpg, y=wt)) +
  geom_point() +
  labs(title="Miles per Gallon vs Weight", x="Miles per Gallon",y="Weight")

# Miles per Gallon vs Displacement scatterplot.
ggplot(carsDF, aes(x=mpg, y=disp)) +
  geom_point() +
  labs(title="Miles per Gallon vs Displacement", x="Miles per Gallon",y="Displacement")

