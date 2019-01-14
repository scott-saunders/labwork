library(ggplot2)

theme_1 <- function () { 
  theme_classic() %+replace% 
    theme(
      axis.text = element_text( size=12),
      axis.title=element_text(size=14),
      strip.text = element_text(size = 14),
      strip.background = element_rect(color='white'),
      legend.title=element_text(size=14),
      legend.text=element_text(size=12),
      legend.text.align=0,
      panel.grid.major = element_line(color='grey',size=0.1)
    )
}