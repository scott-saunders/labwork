HPLC / Colony Biofilm Readme
================

# Links to all the HPLC / Colony biofilm notebook htmls

``` r
library(htmltools)

base_path="https://scott-saunders.github.io/labwork/HPLC/"

files <- dir(path=".", pattern = "*\\.html$",include.dirs = T,recursive = T)

for(link in files){
  print(
    tags$a(href = paste(base_path, link, sep=''), link)
    )
  writeLines("")
}
```

<a href="https://scott-saunders.github.io/labwork/HPLC/07_23_19_Colonies/TOTO1_measurements/analysis/07_23_19_WT_toto1_measurements.html">07\_23\_19\_Colonies/TOTO1\_measurements/analysis/07\_23\_19\_WT\_toto1\_measurements.html</a>

<a href="https://scott-saunders.github.io/labwork/HPLC/analysis/2018_10_30_Notebook_colonyHPLC.html">analysis/2018\_10\_30\_Notebook\_colonyHPLC.html</a>

<a href="https://scott-saunders.github.io/labwork/HPLC/analysis/2018_10_30_Notebook_colonyHPLC.nb.html">analysis/2018\_10\_30\_Notebook\_colonyHPLC.nb.html</a>
