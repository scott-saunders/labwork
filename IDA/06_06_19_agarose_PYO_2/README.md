06\_06\_19 Agarose PYO 2 README
================

# Links to all the notebook htmls

``` r
library(htmltools)

base_path="https://scott-saunders.github.io/labwork/IDA/06_06_19_agarose_PYO_2/"

files <- dir(path=".", pattern = "*\\.html$",include.dirs = T,recursive = T)

for(link in files){
  print(
    tags$a(href = paste(base_path, link, sep=''), link)
    )
  writeLines("")
}
```

<a href="https://scott-saunders.github.io/labwork/IDA/06_06_19_agarose_PYO_2/Processing/06_06_19_agarose_PYO_2_processing.html">Processing/06\_06\_19\_agarose\_PYO\_2\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/06_06_19_agarose_PYO_2/README.html">README.html</a>
