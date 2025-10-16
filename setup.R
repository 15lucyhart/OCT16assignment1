#package load function
packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      z = paste("Checking for package: ", x[i])
      print(z)
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      } else {
        print("Already installed.")
      }
      library(x[i], character.only = TRUE)
    }
  }
# create a string of package names
packages <- c('tidyverse',
              'palmerpenguins',
              'rmarkdown', 
             'dplyr', 
             'ggthemes',
             'RColorBrewer',
             'viridis',
             'ggdark',
             'plotly',
             'RColorBrewer',
             'viridis',
             'lterdatasampler',
             'rstatix',
             'lterdatasampler',
             'rstatix',
             'readxl',
             'janitor',
             'sjPlot'
)

# use the packageLoad function we created on those packages
packageLoad(packages)

