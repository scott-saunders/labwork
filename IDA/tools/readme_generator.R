library(rmarkdown)

# Grab all README files
files <- dir(path = '.', pattern = 'README',include.dirs = F,recursive = T, ignore.case = T)

# Just take the actual .rmd files
readme <- grep(pattern = "rmd", x = files, value = T, ignore.case = T)

# Add the index file
to_knit <- c(readme,'index.Rmd')

# loop through and render github version then html version with parameters in yaml
for(f in to_knit) {
  render(f, 'github_document')
  render(f, 'html_document')
}

# Function for updating All READMEs 

# Function for updating only index README and specific Folder README

# Function for generating new README containing folder name and html files

generate_readme <- function() {
  wd = getwd()
  file.copy(from = "/labwork/IDA/tools/09_05_19_sandbox.html", to = wd)
}
