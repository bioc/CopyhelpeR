.wrap <- function(...) {
    file.sep <- .Platform$file.sep
    splitted <- paste(unlist(strsplit(paste(...), split = file.sep)),
                                      collapse = paste0(file.sep, " "))
    splitted.pasted <- paste(strwrap(paste(splitted),
                                     exdent = 2), collapse = "\n")
    gsub(paste0(file.sep, " "), file.sep, splitted.pasted)
}
