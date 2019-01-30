Psoralen Non equilibrium Aggregate
================
01\_28\_19

Notebooks:

``` r
library(htmltools)

base_path="https://scott-saunders.github.io/labwork/IDA/01_28_19_psoralen_nonequil_aggregate/"

files <- dir(path=".", pattern = "*\\.html$",include.dirs = T,recursive = T)

for(link in files){
  print(
    tags$a(href = paste(base_path, link, sep=''), link)
    )
  writeLines("")
}
```

<a href="https://scott-saunders.github.io/labwork/IDA/01_28_19_psoralen_nonequil_aggregate/Analysis/01_28_19_psoralen_nonequil_aggregate_analysis.html">Analysis/01\_28\_19\_psoralen\_nonequil\_aggregate\_analysis.html</a>

## Purpose

This directory contains analysis from the three replicates of the
psoralen IDA experiments in January 2019.
