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

<a href="https://scott-saunders.github.io/labwork/HPLC/07_23_19_Colonies/PI_EtBr_colony_HPLC/analysis/2019_07_23_PI_EtBr_colonies_analysis.html">07\_23\_19\_Colonies/PI\_EtBr\_colony\_HPLC/analysis/2019\_07\_23\_PI\_EtBr\_colonies\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/HPLC/07_23_19_Colonies/TOTO1_measurements/analysis/07_23_19_WT_toto1_brms.html">07\_23\_19\_Colonies/TOTO1\_measurements/analysis/07\_23\_19\_WT\_toto1\_brms.html</a>

<a href="https://scott-saunders.github.io/labwork/HPLC/07_23_19_Colonies/TOTO1_measurements/analysis/07_23_19_WT_toto1_measurements.html">07\_23\_19\_Colonies/TOTO1\_measurements/analysis/07\_23\_19\_WT\_toto1\_measurements.html</a>

<a href="https://scott-saunders.github.io/labwork/HPLC/2019_10_22/2019_10_22_colony_etbr_dnase_analysis.html">2019\_10\_22/2019\_10\_22\_colony\_etbr\_dnase\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/HPLC/analysis/2018_10_30_Notebook_colonyHPLC.html">analysis/2018\_10\_30\_Notebook\_colonyHPLC.html</a>

<a href="https://scott-saunders.github.io/labwork/HPLC/analysis/2018_10_30_Notebook_colonyHPLC.nb.html">analysis/2018\_10\_30\_Notebook\_colonyHPLC.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/HPLC/README.html">README.html</a>
