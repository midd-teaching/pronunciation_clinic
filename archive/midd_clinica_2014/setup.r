# Slidy presentations from Rmarkdown

options(rstudio.markdownToHTML = 
  function(inputFile, outputFile) {      
    system(paste("pandoc", "-s -S -i -t Slidy --mathjax", shQuote(inputFile), "-o", shQuote(outputFile)))
  }
)

pandoc -s -S -i -t Slidy --mathjax 1_midd_clinica_2014.md -o 1_midd_clinica_2014.html
