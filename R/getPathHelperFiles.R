getPathHelperFiles <- function(ref.genome) {
    switch(ref.genome,
           "hg18" = dir(system.file(package = "CopyhelpeR", "extdata"),
                        pattern = "hg18_1kb", full.names = TRUE),
           "hg19" = dir(system.file(package = "CopyhelpeR", "extdata"),
                        pattern = "hg19_1kb", full.names = TRUE),
           "hg38" = dir(system.file(package = "CopyhelpeR", "extdata"),
                        pattern = "hg38_1kb", full.names = TRUE),
           "mm9" = dir(system.file(package = "CopyhelpeR", "extdata"),
                       pattern = "mm9_1kb", full.names = TRUE),
           "mm10" = dir(system.file(package = "CopyhelpeR", "extdata"),
                        pattern = "mm10_1kb$", full.names = TRUE),
           "mm10_4" = dir(system.file(package = "CopyhelpeR", "extdata"),
                        pattern = "mm10_1kb_4", full.names = TRUE),
           stop(.wrap("There are currently no helper files available for",
                      "reference genome", sQuote(ref.genome))))
}
