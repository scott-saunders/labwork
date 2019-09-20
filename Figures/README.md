Figures README
================

# Links to all the IDA notebook htmls

``` r
library(htmltools)

base_path="https://scott-saunders.github.io/labwork/Figures/"

files <- dir(path=".", pattern = "*\\.html$",include.dirs = T,recursive = T)

for(link in files){
  print(
    tags$a(href = paste(base_path, link, sep=''), link)
    )
  writeLines("")
}
```

<a href="https://scott-saunders.github.io/labwork/Figures/01_30_19_fig_4.html">01\_30\_19\_fig\_4.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/02_05_19_draft_2/code/02_05_19_fig_1_draft_2.html">02\_05\_19\_draft\_2/code/02\_05\_19\_fig\_1\_draft\_2.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/02_05_19_draft_2/code/02_05_19_fig_2_draft_2.html">02\_05\_19\_draft\_2/code/02\_05\_19\_fig\_2\_draft\_2.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/02_05_19_draft_2/code/02_05_19_supp_swv_gc_calibration.html">02\_05\_19\_draft\_2/code/02\_05\_19\_supp\_swv\_gc\_calibration.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/02_05_19_draft_2/code/02_17_19_derivations.html">02\_05\_19\_draft\_2/code/02\_17\_19\_derivations.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/draft1/2018_11_01_figure1.nb.html">draft1/2018\_11\_01\_figure1.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/draft1/2018_11_01_figure2.html">draft1/2018\_11\_01\_figure2.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/draft1/2018_11_01_figure2.nb.html">draft1/2018\_11\_01\_figure2.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/draft1/2018_11_01_figure3.nb.html">draft1/2018\_11\_01\_figure3.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/draft1/2018_11_01_figure4.nb.html">draft1/2018\_11\_01\_figure4.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/README.html">README.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/Spectroscopy_first_look.nb.html">Spectroscopy\_first\_look.nb.html</a>
