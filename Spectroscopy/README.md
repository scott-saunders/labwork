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

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/08_29_19_biofilm2/analysis/2019_09_27_spectroscopy_curve_fitting.html">08\_29\_19\_biofilm2/analysis/2019\_09\_27\_spectroscopy\_curve\_fitting.html</a>

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/2019_09_17_solution_ET/2019_09_17_solution_ET_analysis_2.html">2019\_09\_17\_solution\_ET/2019\_09\_17\_solution\_ET\_analysis\_2.html</a>

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/2019_09_17_solution_ET/2019_09_17_solution_ET_analysis.html">2019\_09\_17\_solution\_ET/2019\_09\_17\_solution\_ET\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/2019_09_24_redox_DNA_binding/2019_09_17_phzRedOx_DNAbinding_analysis.html">2019\_09\_24\_redox\_DNA\_binding/2019\_09\_17\_phzRedOx\_DNAbinding\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/2019_10_09_PHZred_ctDNA/2019_10_09_PHZred_ctDNA_analysis.html">2019\_10\_09\_PHZred\_ctDNA/2019\_10\_09\_PHZred\_ctDNA\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/2019_10_18_solution_ET_ctDNA/2019_10_18_solution_ET_ctDNA_analysis.html">2019\_10\_18\_solution\_ET\_ctDNA/2019\_10\_18\_solution\_ET\_ctDNA\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/2019_11_13_phz_ET_vs_O2/2019_11_13_phz_ET_vs_O2_analysis.html">2019\_11\_13\_phz\_ET\_vs\_O2/2019\_11\_13\_phz\_ET\_vs\_O2\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/2019_11_22_wt_dphz_eDNA/2019_11_22_wt_dphz_eDNA_analysis.html">2019\_11\_22\_wt\_dphz\_eDNA/2019\_11\_22\_wt\_dphz\_eDNA\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/README.html">README.html</a>
