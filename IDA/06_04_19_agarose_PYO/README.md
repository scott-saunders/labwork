06\_04\_19 Agarose PYO README
================

# Links to all the notebook htmls

``` r
library(htmltools)

base_path="https://scott-saunders.github.io/labwork/IDA/06_04_19_agarose_PYO/"

files <- dir(path=".", pattern = "*\\.html$",include.dirs = T,recursive = T)

for(link in files){
  print(
    tags$a(href = paste(base_path, link, sep=''), link)
    )
  writeLines("")
}
```

<a href="https://scott-saunders.github.io/labwork/IDA/06_04_19_agarose_PYO/Processing/06_04_19_agarose_PYO_processing.html">Processing/06\_04\_19\_agarose\_PYO\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/06_04_19_agarose_PYO/README.html">README.html</a>
