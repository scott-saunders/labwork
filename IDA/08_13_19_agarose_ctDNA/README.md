Agarose ctDNA
================
Scott Saunders
08\_13\_19

# Experimental Plan

The goal for this experiment is to assess whether calf thymus DNA is
sufficient in vitro to yield a disparity between
![D\_{ap}](https://latex.codecogs.com/png.latex?D_%7Bap%7D "D_{ap}") and
![D\_{phys}](https://latex.codecogs.com/png.latex?D_%7Bphys%7D
"D_{phys}"). I will do this by comparing IDAs coated in 1% agarose +/-
1mg/mL ctDNA. If this experiment is successful it will help us to
determine whether the disparity we observe for the biofilm is due to
physical diffusion only (influenced by the heterogeneity of the biofilm)
or truly self-exchange. This in vitro system should recapitulate the
biofilm, but will be far more homogeneous.

## Expected Results

First, I anticipate that we will observe a difference in the decays +/-
DNA. Hopefully, enough of the PYO will bind to the DNA that diffusion is
slowed. If no difference is observed between the two conditions then I
think we will have to reassess how to approach the in vitro system.

Second, the DNA may yield a disparity between Dap and Dphys - this would
support the self-exchange model. Alternatively, the DNA may look
different than no DNA, but not yield a difference. This would support
the diffusion only model, where the geometry of the biofilm is causing
an artifactual
![D\_{phys}](https://latex.codecogs.com/png.latex?D_%7Bphys%7D
"D_{phys}")

## Methods

2% agarose will be prepared in PBS 50. Then the molten 2% agar will be
combined 1:1 with either ctDNA (2mg/mL) or just PBS 50. 50uL droplets
will be deposited on the IDA and solidified for 15min.

Then IDAs will be immersed in a 75uM PYO solution. The influx of PYO
will be monitored by SWV only every ~10min to avoid unnecessary buildup
on the electrode and incubated for at least 30min to insure PYO
equilibrates into the gel. Then the IDA will be directly transferred
into fresh medium and the macro will be started to acquire the SWV / GC
data. Based on past data I expect this transfer acquisition to take at
least 1 hour.

# Links to all the IDA notebook htmls

``` r
library(htmltools)

base_path="https://scott-saunders.github.io/labwork/IDA/08_13_19_agarose_ctDNA/"

files <- dir(path=".", pattern = "*\\.html$",include.dirs = T,recursive = T)

for(link in files){
  print(
    tags$a(href = paste(base_path, link, sep=''), link)
    )
  writeLines("")
}
```

<a href="https://scott-saunders.github.io/labwork/IDA/08_13_19_agarose_ctDNA/analysis/08_13_19_agarose_ctDNA_analysis.html">analysis/08\_13\_19\_agarose\_ctDNA\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/08_13_19_agarose_ctDNA/processing/08_13_19_agarose_ctDNA_processing.html">processing/08\_13\_19\_agarose\_ctDNA\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/08_13_19_agarose_ctDNA/README.html">README.html</a>
