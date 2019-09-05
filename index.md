Lab Notebook
================

``` r
library(tidyverse)
library(cowplot)
library(broom) 
library(modelr) 
library(viridis)
library(lubridate)
library(hms)
library(knitr)
library(kableExtra)

knitr::opts_chunk$set(tidy.opts=list(width.cutoff=60),tidy=TRUE, echo = TRUE, message=FALSE, warning=FALSE, fig.align="center")
```

## Welcome

This is my computational lab notebook. As of 2019 it mostly deals with
work related to the bacterium *Pseudomonas aeruginosa*, which looks like
this:

-----

<center>

<img src='IDA_cellDNAzoom_6.png' width='30%' height='30%'>

</center>

-----

The notebook is built from [Rmarkdown
notebooks](https://rmarkdown.rstudio.com/lesson-2.html) (I highly
recommend) that are “knit” into html files.

## Structure

The notebook is currently organized as the ‘labwork’ github repository
that is cloned on several devices. The main folders are the following:

#### [IDA](https://scott-saunders.github.io/labwork/IDA/README.html)

**IDA** brings you to the electrochemical work. The acronym refers to
the Interdigitated Electrode Array, which is a microelectrode that I
have used extensively during my PhD to study microbial phenazines.

#### [FRAP](https://scott-saunders.github.io/labwork/FRAP/README.html)

**FRAP** brings you to a set of photobleaching experiments conducted
Summer 2019 to independently estimate diffusion coefficients for the
phenazine
pyocyanin.

#### [Figures](https://scott-saunders.github.io/labwork/Figures/README.html)

**Figures** brings you to the folder where I generated most of the
figures for the phenazine paper. Many of these notebooks did not make it
into nice html form, so look on the github directly for the
comprehensive set.

These links will take you to READMEs that display links to the html
files generated from Rmarkdown notebooks. Note, that not all analyses
make it into final, polished html form, so some entries may look totally
unformated or may only be .rmd files that exist in the github
repository. This is particularly true for the ‘Figures’ folder at this
point.

## Future hopes and Dreams

I hope that one day this repository will evolve into an organized place
where almost all of my important scientific information can live. That
would include protocols and ideas as well as a comprehensive set of
processing and analysis notebooks for experiments. One datatype that
this format does not work particularly well for is sets of images, but
we’ll just have to keep thinking about that one. This project was
certainly inspired by [Griffin Chure’s
notebooks](https://github.com/gchure/reproducible_research), which I was
first introduced to in [Justin Bois’ Data Analysis
course](http://bois.caltech.edu/index.html) at Caltech (2018).

## All .html files:

Here’s a list of all html files in the notebook.

``` r
library(htmltools)

base_path = "https://scott-saunders.github.io/labwork/"

files <- dir(path = ".", pattern = "*\\.html$", include.dirs = T, 
    recursive = T)

for (link in files) {
    print(tags$a(href = paste(base_path, link, sep = ""), link))
    writeLines("")
}
```

<a href="https://scott-saunders.github.io/labwork/Figures/01_30_19_fig_4.html">Figures/01\_30\_19\_fig\_4.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/02_05_19_draft_2/code/02_05_19_fig_1_draft_2.html">Figures/02\_05\_19\_draft\_2/code/02\_05\_19\_fig\_1\_draft\_2.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/02_05_19_draft_2/code/02_05_19_fig_2_draft_2.html">Figures/02\_05\_19\_draft\_2/code/02\_05\_19\_fig\_2\_draft\_2.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/02_05_19_draft_2/code/02_05_19_supp_swv_gc_calibration.html">Figures/02\_05\_19\_draft\_2/code/02\_05\_19\_supp\_swv\_gc\_calibration.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/02_05_19_draft_2/code/02_17_19_derivations.html">Figures/02\_05\_19\_draft\_2/code/02\_17\_19\_derivations.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/draft1/2018_11_01_figure1.nb.html">Figures/draft1/2018\_11\_01\_figure1.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/draft1/2018_11_01_figure2.html">Figures/draft1/2018\_11\_01\_figure2.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/draft1/2018_11_01_figure2.nb.html">Figures/draft1/2018\_11\_01\_figure2.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/draft1/2018_11_01_figure3.nb.html">Figures/draft1/2018\_11\_01\_figure3.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/draft1/2018_11_01_figure4.nb.html">Figures/draft1/2018\_11\_01\_figure4.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/README.html">Figures/README.html</a>

<a href="https://scott-saunders.github.io/labwork/Figures/Spectroscopy_first_look.nb.html">Figures/Spectroscopy\_first\_look.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/FRAP/05_30_19/05_30_19_PYO_FRAP_analysis_2.html">FRAP/05\_30\_19/05\_30\_19\_PYO\_FRAP\_analysis\_2.html</a>

<a href="https://scott-saunders.github.io/labwork/FRAP/06_10_19_glycerol/06_10_19_PYO_FRAP_glycerol_analysis.html">FRAP/06\_10\_19\_glycerol/06\_10\_19\_PYO\_FRAP\_glycerol\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/FRAP/06_13_19_glycerol_2/06_13_19_PYO_FRAP_glycerol_2_analysis.html">FRAP/06\_13\_19\_glycerol\_2/06\_13\_19\_PYO\_FRAP\_glycerol\_2\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/FRAP/06_13_19_glycerol_2/06_20_19_brms_sandbox.html">FRAP/06\_13\_19\_glycerol\_2/06\_20\_19\_brms\_sandbox.html</a>

<a href="https://scott-saunders.github.io/labwork/FRAP/06_13_19_glycerol_2/06_20_19_brms_sandbox.nb.html">FRAP/06\_13\_19\_glycerol\_2/06\_20\_19\_brms\_sandbox.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/FRAP/README.html">FRAP/README.html</a>

<a href="https://scott-saunders.github.io/labwork/HPLC/07_23_19_Colonies/TOTO1_measurements/analysis/07_23_19_WT_toto1_measurements.html">HPLC/07\_23\_19\_Colonies/TOTO1\_measurements/analysis/07\_23\_19\_WT\_toto1\_measurements.html</a>

<a href="https://scott-saunders.github.io/labwork/HPLC/analysis/2018_10_30_Notebook_colonyHPLC.html">HPLC/analysis/2018\_10\_30\_Notebook\_colonyHPLC.html</a>

<a href="https://scott-saunders.github.io/labwork/HPLC/analysis/2018_10_30_Notebook_colonyHPLC.nb.html">HPLC/analysis/2018\_10\_30\_Notebook\_colonyHPLC.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/HPLC/README.html">HPLC/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_03_19_Update/Dap_V1.html">IDA/01\_03\_19\_Update/Dap\_V1.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_03_19_Update/Dap_V2.html">IDA/01\_03\_19\_Update/Dap\_V2.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_03_19_Update/Dap_V3.html">IDA/01\_03\_19\_Update/Dap\_V3.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_03_19_Update/index.html">IDA/01\_03\_19\_Update/index.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_03_19_Update/test.html">IDA/01\_03\_19\_Update/test.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_08_19_psoralen_nonequil/Analysis/01_08_19_psoralen_nonequil_Dap_analysis.html">IDA/01\_08\_19\_psoralen\_nonequil/Analysis/01\_08\_19\_psoralen\_nonequil\_Dap\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_08_19_psoralen_nonequil/Processing/01_08_19_psoralen_nonequil_processing.html">IDA/01\_08\_19\_psoralen\_nonequil/Processing/01\_08\_19\_psoralen\_nonequil\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_08_19_psoralen_nonequil/README.html">IDA/01\_08\_19\_psoralen\_nonequil/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_17_19_psoralen_nonequil_2/Analysis/01_17_19_psoralen_nonequil_2_Dap_analysis.html">IDA/01\_17\_19\_psoralen\_nonequil\_2/Analysis/01\_17\_19\_psoralen\_nonequil\_2\_Dap\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_17_19_psoralen_nonequil_2/Analysis/01_17_19_psoralen_nonequil_2_Dm_analysis.html">IDA/01\_17\_19\_psoralen\_nonequil\_2/Analysis/01\_17\_19\_psoralen\_nonequil\_2\_Dm\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_17_19_psoralen_nonequil_2/Processing/01_17_19_psoralen_nonequil_2_Dap_processing.html">IDA/01\_17\_19\_psoralen\_nonequil\_2/Processing/01\_17\_19\_psoralen\_nonequil\_2\_Dap\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_17_19_psoralen_nonequil_2/README.html">IDA/01\_17\_19\_psoralen\_nonequil\_2/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_23_19_psoralen_nonequil_3/Analysis/01_21_19_analysis_psoralen_toxicity.html">IDA/01\_23\_19\_psoralen\_nonequil\_3/Analysis/01\_21\_19\_analysis\_psoralen\_toxicity.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_23_19_psoralen_nonequil_3/Analysis/01_23_19_psoralen_nonequil_3_Dap_analysis.html">IDA/01\_23\_19\_psoralen\_nonequil\_3/Analysis/01\_23\_19\_psoralen\_nonequil\_3\_Dap\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_23_19_psoralen_nonequil_3/Processing/01_23_19_processing_psoralen_nonequil_3.html">IDA/01\_23\_19\_psoralen\_nonequil\_3/Processing/01\_23\_19\_processing\_psoralen\_nonequil\_3.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_23_19_psoralen_nonequil_3/README.html">IDA/01\_23\_19\_psoralen\_nonequil\_3/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_28_19_psoralen_nonequil_aggregate/Analysis/01_28_19_Dm_psoralen_nonequil_aggregate_analysis.html">IDA/01\_28\_19\_psoralen\_nonequil\_aggregate/Analysis/01\_28\_19\_Dm\_psoralen\_nonequil\_aggregate\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_28_19_psoralen_nonequil_aggregate/Analysis/01_28_19_psoralen_nonequil_aggregate_analysis.html">IDA/01\_28\_19\_psoralen\_nonequil\_aggregate/Analysis/01\_28\_19\_psoralen\_nonequil\_aggregate\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_28_19_psoralen_nonequil_aggregate/README.html">IDA/01\_28\_19\_psoralen\_nonequil\_aggregate/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/06_04_19_agarose_PYO/Processing/06_04_19_agarose_PYO_processing.html">IDA/06\_04\_19\_agarose\_PYO/Processing/06\_04\_19\_agarose\_PYO\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/06_04_19_agarose_PYO/README.html">IDA/06\_04\_19\_agarose\_PYO/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/06_06_19_agarose_PYO_2/Processing/06_06_19_agarose_PYO_2_processing.html">IDA/06\_06\_19\_agarose\_PYO\_2/Processing/06\_06\_19\_agarose\_PYO\_2\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/06_06_19_agarose_PYO_2/README.html">IDA/06\_06\_19\_agarose\_PYO\_2/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/08_13_19_agarose_ctDNA/analysis/08_13_19_agarose_ctDNA_analysis.html">IDA/08\_13\_19\_agarose\_ctDNA/analysis/08\_13\_19\_agarose\_ctDNA\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/08_13_19_agarose_ctDNA/processing/08_13_19_agarose_ctDNA_processing.html">IDA/08\_13\_19\_agarose\_ctDNA/processing/08\_13\_19\_agarose\_ctDNA\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/08_13_19_agarose_ctDNA/README.html">IDA/08\_13\_19\_agarose\_ctDNA/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/08_15_19_agarose_glycerol/analysis/08_15_19_agarose_glycerol_analysis.html">IDA/08\_15\_19\_agarose\_glycerol/analysis/08\_15\_19\_agarose\_glycerol\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/08_15_19_agarose_glycerol/processing/08_15_19_agarose_glycerol_processing.html">IDA/08\_15\_19\_agarose\_glycerol/processing/08\_15\_19\_agarose\_glycerol\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/09_11_18_DapEstimation.html">IDA/09\_11\_18\_DapEstimation.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/11_28_18_blank_IDA/Analysis/11_28_18_blank_IDA_Analysis.html">IDA/11\_28\_18\_blank\_IDA/Analysis/11\_28\_18\_blank\_IDA\_Analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/12_04_18_psoralen_biofilm/Analysis/11_29_18_psoralen_crosslinking_analysis.html">IDA/12\_04\_18\_psoralen\_biofilm/Analysis/11\_29\_18\_psoralen\_crosslinking\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/12_04_18_psoralen_biofilm/Analysis/12_04_18_psoralen_Analysis.html">IDA/12\_04\_18\_psoralen\_biofilm/Analysis/12\_04\_18\_psoralen\_Analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/12_10_18/Analysis/12_10_18_Analysis.html">IDA/12\_10\_18/Analysis/12\_10\_18\_Analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/12_10_18/Analysis/generating_and_decoding_diffusion.html">IDA/12\_10\_18/Analysis/generating\_and\_decoding\_diffusion.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/diffusion_modeling_11_17_18.nb.html">IDA/diffusion\_modeling\_11\_17\_18.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/diffusionLayerTheory.html">IDA/diffusionLayerTheory.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/README.html">IDA/README.html</a>

<a href="https://scott-saunders.github.io/labwork/index.html">index.html</a>

<a href="https://scott-saunders.github.io/labwork/potentialStep_Dap_09_16_18.html">potentialStep\_Dap\_09\_16\_18.html</a>

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/08_07_19_biofilm_Ru_Rh/analysis/08_07_19_spectroscopy_biofilm_Ru_Rh.html">Spectroscopy/08\_07\_19\_biofilm\_Ru\_Rh/analysis/08\_07\_19\_spectroscopy\_biofilm\_Ru\_Rh.html</a>

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/08_29_19_biofilm2/analysis/08_29_19_biofilm_spectroscopy_analysis.html">Spectroscopy/08\_29\_19\_biofilm2/analysis/08\_29\_19\_biofilm\_spectroscopy\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/Spectroscopy/README.html">Spectroscopy/README.html</a>
