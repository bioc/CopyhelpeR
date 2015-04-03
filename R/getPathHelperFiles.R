getPathHelperFiles <- function(ref.genome) {
    switch(ref.genome,
           "hg18" = dir(system.file(package = "CopyhelpeR", "extdata"),
                        pattern = "^hg18", full.names = TRUE),
           "hg19" = dir(system.file(package = "CopyhelpeR", "extdata"),
                        pattern = "^hg19", full.names = TRUE),
           "hg38" = dir(system.file(package = "CopyhelpeR", "extdata"),
                        pattern = "^hg38", full.names = TRUE),
           "mm9" = dir(system.file(package = "CopyhelpeR", "extdata"),
                       pattern = "^mm9", full.names = TRUE),
           "mm10" = dir(system.file(package = "CopyhelpeR", "extdata"),
                        pattern = "^mm10", full.names = TRUE),
           "mm10_4" = dir(system.file(package = "CopyhelpeR", "extdata"),
                        pattern = "_4$", full.names = TRUE),
           stop(.wrap("There are currently no helper files available for",
                      "reference genome", sQuote(ref.genome))))
}
