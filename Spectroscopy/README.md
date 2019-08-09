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
