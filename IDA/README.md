IDA README
================

# Links to all the IDA notebook htmls

``` r
library(htmltools)

base_path="https://scott-saunders.github.io/labwork/IDA/"

files <- dir(path=".", pattern = "*\\.html$",include.dirs = T,recursive = T)

for(link in files){
  print(
    tags$a(href = paste(base_path, link, sep=''), link)
    )
  writeLines("")
}
```

<a href="https://scott-saunders.github.io/labwork/IDA/01_03_19_Update/Dap_V1.html">01\_03\_19\_Update/Dap\_V1.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_03_19_Update/Dap_V2.html">01\_03\_19\_Update/Dap\_V2.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_03_19_Update/Dap_V3.html">01\_03\_19\_Update/Dap\_V3.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_03_19_Update/index.html">01\_03\_19\_Update/index.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_03_19_Update/test.html">01\_03\_19\_Update/test.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_08_19_psoralen_nonequil/Analysis/01_08_19_psoralen_nonequil_Dap_analysis.html">01\_08\_19\_psoralen\_nonequil/Analysis/01\_08\_19\_psoralen\_nonequil\_Dap\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_08_19_psoralen_nonequil/Processing/01_08_19_psoralen_nonequil_processing.html">01\_08\_19\_psoralen\_nonequil/Processing/01\_08\_19\_psoralen\_nonequil\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_08_19_psoralen_nonequil/README.html">01\_08\_19\_psoralen\_nonequil/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_17_19_psoralen_nonequil_2/Analysis/01_17_19_psoralen_nonequil_2_Dap_analysis.html">01\_17\_19\_psoralen\_nonequil\_2/Analysis/01\_17\_19\_psoralen\_nonequil\_2\_Dap\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_17_19_psoralen_nonequil_2/Analysis/01_17_19_psoralen_nonequil_2_Dm_analysis.html">01\_17\_19\_psoralen\_nonequil\_2/Analysis/01\_17\_19\_psoralen\_nonequil\_2\_Dm\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_17_19_psoralen_nonequil_2/Processing/01_17_19_psoralen_nonequil_2_Dap_processing.html">01\_17\_19\_psoralen\_nonequil\_2/Processing/01\_17\_19\_psoralen\_nonequil\_2\_Dap\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_17_19_psoralen_nonequil_2/README.html">01\_17\_19\_psoralen\_nonequil\_2/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_23_19_psoralen_nonequil_3/Analysis/01_21_19_analysis_psoralen_toxicity.html">01\_23\_19\_psoralen\_nonequil\_3/Analysis/01\_21\_19\_analysis\_psoralen\_toxicity.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_23_19_psoralen_nonequil_3/Analysis/01_23_19_psoralen_nonequil_3_Dap_analysis.html">01\_23\_19\_psoralen\_nonequil\_3/Analysis/01\_23\_19\_psoralen\_nonequil\_3\_Dap\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_23_19_psoralen_nonequil_3/Processing/01_23_19_processing_psoralen_nonequil_3.html">01\_23\_19\_psoralen\_nonequil\_3/Processing/01\_23\_19\_processing\_psoralen\_nonequil\_3.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_23_19_psoralen_nonequil_3/README.html">01\_23\_19\_psoralen\_nonequil\_3/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_28_19_psoralen_nonequil_aggregate/Analysis/01_28_19_Dm_psoralen_nonequil_aggregate_analysis.html">01\_28\_19\_psoralen\_nonequil\_aggregate/Analysis/01\_28\_19\_Dm\_psoralen\_nonequil\_aggregate\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_28_19_psoralen_nonequil_aggregate/Analysis/01_28_19_psoralen_nonequil_aggregate_analysis.html">01\_28\_19\_psoralen\_nonequil\_aggregate/Analysis/01\_28\_19\_psoralen\_nonequil\_aggregate\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/01_28_19_psoralen_nonequil_aggregate/README.html">01\_28\_19\_psoralen\_nonequil\_aggregate/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/06_04_19_agarose_PYO/Processing/06_04_19_agarose_PYO_processing.html">06\_04\_19\_agarose\_PYO/Processing/06\_04\_19\_agarose\_PYO\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/06_04_19_agarose_PYO/README.html">06\_04\_19\_agarose\_PYO/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/06_06_19_agarose_PYO_2/Processing/06_06_19_agarose_PYO_2_processing.html">06\_06\_19\_agarose\_PYO\_2/Processing/06\_06\_19\_agarose\_PYO\_2\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/06_06_19_agarose_PYO_2/README.html">06\_06\_19\_agarose\_PYO\_2/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/08_13_19_agarose_ctDNA/analysis/08_13_19_agarose_ctDNA_analysis.html">08\_13\_19\_agarose\_ctDNA/analysis/08\_13\_19\_agarose\_ctDNA\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/08_13_19_agarose_ctDNA/processing/08_13_19_agarose_ctDNA_processing.html">08\_13\_19\_agarose\_ctDNA/processing/08\_13\_19\_agarose\_ctDNA\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/08_13_19_agarose_ctDNA/README.html">08\_13\_19\_agarose\_ctDNA/README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/08_15_19_agarose_glycerol/analysis/08_15_19_agarose_glycerol_analysis.html">08\_15\_19\_agarose\_glycerol/analysis/08\_15\_19\_agarose\_glycerol\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/08_15_19_agarose_glycerol/processing/08_15_19_agarose_glycerol_processing.html">08\_15\_19\_agarose\_glycerol/processing/08\_15\_19\_agarose\_glycerol\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/09_09_19_dphz_etbr/analysis/09_09_19_dphz_etbr_analysis.html">09\_09\_19\_dphz\_etbr/analysis/09\_09\_19\_dphz\_etbr\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/09_09_19_dphz_etbr/processing/09_09_19_dphz_etbr_processing.html">09\_09\_19\_dphz\_etbr/processing/09\_09\_19\_dphz\_etbr\_processing.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/09_11_18_DapEstimation.html">09\_11\_18\_DapEstimation.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/11_28_18_blank_IDA/Analysis/11_28_18_blank_IDA_Analysis.html">11\_28\_18\_blank\_IDA/Analysis/11\_28\_18\_blank\_IDA\_Analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/12_04_18_psoralen_biofilm/Analysis/11_29_18_psoralen_crosslinking_analysis.html">12\_04\_18\_psoralen\_biofilm/Analysis/11\_29\_18\_psoralen\_crosslinking\_analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/12_04_18_psoralen_biofilm/Analysis/12_04_18_psoralen_Analysis.html">12\_04\_18\_psoralen\_biofilm/Analysis/12\_04\_18\_psoralen\_Analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/12_10_18/Analysis/12_10_18_Analysis.html">12\_10\_18/Analysis/12\_10\_18\_Analysis.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/12_10_18/Analysis/generating_and_decoding_diffusion.html">12\_10\_18/Analysis/generating\_and\_decoding\_diffusion.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/diffusion_modeling_11_17_18.nb.html">diffusion\_modeling\_11\_17\_18.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/diffusionLayerTheory.html">diffusionLayerTheory.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/Dm/03_04_19_finite_psource_diffusion.html">Dm/03\_04\_19\_finite\_psource\_diffusion.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/Dm/03_05_19_finite_diffusion_SWVdata.html">Dm/03\_05\_19\_finite\_diffusion\_SWVdata.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/README.html">README.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/09_05_19_sandbox.html">tools/09\_05\_19\_sandbox.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/09_13_19_sandbox.html">tools/09\_13\_19\_sandbox.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/09_13_19_sandbox.nb.html">tools/09\_13\_19\_sandbox.nb.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/footer.html">tools/footer.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/header.html">tools/header.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/pres_test_files/reveal.js-3.3.0.1/demo.html">tools/pres\_test\_files/reveal.js-3.3.0.1/demo.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/pres_test_files/reveal.js-3.3.0.1/index.html">tools/pres\_test\_files/reveal.js-3.3.0.1/index.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/pres_test_files/reveal.js-3.3.0.1/plugin/markdown/example.html">tools/pres\_test\_files/reveal.js-3.3.0.1/plugin/markdown/example.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/pres_test_files/reveal.js-3.3.0.1/plugin/notes-server/notes.html">tools/pres\_test\_files/reveal.js-3.3.0.1/plugin/notes-server/notes.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/pres_test_files/reveal.js-3.3.0.1/plugin/notes/notes.html">tools/pres\_test\_files/reveal.js-3.3.0.1/plugin/notes/notes.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/pres_test_files/reveal.js-3.3.0.1/test/test-markdown-element-attributes.html">tools/pres\_test\_files/reveal.js-3.3.0.1/test/test-markdown-element-attributes.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/pres_test_files/reveal.js-3.3.0.1/test/test-markdown-slide-attributes.html">tools/pres\_test\_files/reveal.js-3.3.0.1/test/test-markdown-slide-attributes.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/pres_test_files/reveal.js-3.3.0.1/test/test-markdown.html">tools/pres\_test\_files/reveal.js-3.3.0.1/test/test-markdown.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/pres_test_files/reveal.js-3.3.0.1/test/test-pdf.html">tools/pres\_test\_files/reveal.js-3.3.0.1/test/test-pdf.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/pres_test_files/reveal.js-3.3.0.1/test/test.html">tools/pres\_test\_files/reveal.js-3.3.0.1/test/test.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/pres_test.html">tools/pres\_test.html</a>

<a href="https://scott-saunders.github.io/labwork/IDA/tools/test/2019_09_28_sandbox.html">tools/test/2019\_09\_28\_sandbox.html</a>
