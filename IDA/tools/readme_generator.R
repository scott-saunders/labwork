library(knitr)
library(rmarkdown)
library(tidyverse)



base_path="https://scott-saunders.github.io/labwork/"

files <- dir(path = '.', pattern = 'README',include.dirs = F,recursive = T, ignore.case = T)

readme <- grep(pattern = "rmd", x = files, value = T, ignore.case = T)

to_knit <- c(readme,'index.Rmd')


for(f in to_knit) {
  render(f, 'github_document')
  render(f, 'html_document')
}
