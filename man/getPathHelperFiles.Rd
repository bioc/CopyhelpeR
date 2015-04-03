\name{getPathHelperFiles}
\alias{getPathHelperFiles}
\alias{CopyhelpeR}
\title{
CopyhelpeR: Helper files for CopywriteR
}
\description{
This package contains the helper files that are required to run the CopywriteR
R package (see \url{https://github.com/PeeperLab/CopywriteR/releases}). It
contains pre-assembled 1kb bin GC-content and mappability files for the
reference genomes hg18, hg19, hg38, mm9 and mm10. In addition, it contains a
blacklist filter to remove regions that display CNV. Files are stored as GRanges
objects from the \code{GenomicRanges} Bioconductor package.
}
\usage{
getPathHelperFiles(ref.genome)
}
\arguments{
\item{ref.genome}{
the reference genome for which the helper files are required.
}
}
\details{
The \code{getPathHelperFiles}() function returns the full path to the helper
files folder for the relevant reference genomes ("hg18", "hg19", "hg38", "mm9"
or "mm10").
}
\value{
Returns the full path to the helper files folder for the relevant reference
genomes ("hg18", "hg19", "hg38", "mm9" or "mm10").
}
\author{
Thomas Kuilman (t.kuilman@nki.nl)
}
\examples{
getPathHelperFiles("hg19")
}
