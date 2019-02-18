library(ggplot2)
library(extrafont)

#base_family = "Calibri"

theme_1 <- function () { 
  theme_classic( ) %+replace% 
    theme(
      axis.text = element_text( size=10),
      axis.title=element_text(size=12),
      strip.text = element_text(size = 12),
      strip.background = element_blank(),
      legend.background = element_blank(),
      legend.title=element_text(size=12),
      legend.text=element_text(size=10),
      legend.text.align=0
    )
}

nA_label <- function(x){
# from A to nA
  lab <- x / 1e-9
}

mV_label <- function(x){
# From V to mV
  lab <- x * 1000
}

fold_label <- function(x){
#e.g. 2 to 2x
  lab <- paste(x, "x", sep = '')
}