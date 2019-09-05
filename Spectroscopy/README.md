Spectroscopy README
================

# Links to all the Spectroscopy notebook htmls

``` r
library(htmltools)

base_path="https://scott-saunders.github.io/labwork/Spectroscopy/"

files <- dir(path=".", pattern = "*\\.html$",include.dirs = T,recursive = T)

for(link in files){
  print(
    tags$a(href = paste(base_path, link, sep=''), link)
    )
  writeLines("")
}
```

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/08_07_19_biofilm_Ru_Rh/analysis/08_07_19_spectroscopy_biofilm_Ru_Rh.html">08\_07\_19\_biofilm\_Ru\_Rh/analysis/08\_07\_19\_spectroscopy\_biofilm\_Ru\_Rh.html</a>

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/08_29_19_biofilm2/analysis/08_29_19_biofilm_spectroscopy_analysis.html">08\_29\_19\_biofilm2/analysis/08\_29\_19\_biofilm\_spectroscopy\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/README.html">README.html</a>
