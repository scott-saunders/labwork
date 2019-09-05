FRAP README
================

# Links to all the IDA notebook htmls

``` r
library(htmltools)

base_path="https://scott-saunders.github.io/labwork/FRAP/"

files <- dir(path=".", pattern = "*\\.html$",include.dirs = T,recursive = T)

for(link in files){
  print(
    tags$a(href = paste(base_path, link, sep=''), link)
    )
  writeLines("")
}
```

<a href="https://scott-saunders.github.io/labwork/FRAP/05_30_19/05_30_19_PYO_FRAP_analysis_2.html">05\_30\_19/05\_30\_19\_PYO\_FRAP\_analysis\_2.html</a>

<a href="https://scott-saunders.github.io/labwork/FRAP/06_10_19_glycerol/06_10_19_PYO_FRAP_glycerol_analysis.html">06\_10\_19\_glycerol/06\_10\_19\_PYO\_FRAP\_glycerol\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/FRAP/06_13_19_glycerol_2/06_13_19_PYO_FRAP_glycerol_2_analysis.html">06\_13\_19\_glycerol\_2/06\_13\_19\_PYO\_FRAP\_glycerol\_2\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/FRAP/06_13_19_glycerol_2/06_20_19_brms_sandbox.html">06\_13\_19\_glycerol\_2/06\_20\_19\_brms\_sandbox.html</a>

<a href="https://scott-saunders.github.io/labwork/FRAP/06_13_19_glycerol_2/06_20_19_brms_sandbox.nb.html">06\_13\_19\_glycerol\_2/06\_20\_19\_brms\_sandbox.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/FRAP/README.html">README.html</a>
