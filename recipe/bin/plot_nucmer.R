#!/usr/bin/Rscript
'usage: plot_nucmer.R [--index=<file> --sname=<chr> --qname=<chr> --coords=<file> --out=<chr> --pident=<int> --scolor=<chr> --qcolor=<chr>]
options:
  -i, --index=<file>         Subject samtools index file
  --sname=<chr>              Subject name
  --scolor=<chr>             Subject color
  --qname=<chr>              Query name
  --qcolor=<chr>             Query color
  -c, --coords=<file>        Nucmer coords file
  -o, --out=<chr>            Plots output prefix
  -p, --pident=<int>         Min. identity' -> doc
library(docopt)
opt <- docopt(doc)

# libraries
library(ggplot2)
library(ggbio)
library(rutilstimflutre)
library(GenomicRanges)

# Load coords function
load_coords <- function(coords_file, perc.id) {
  coords <- loadMummer(coords_file, algo = "nucmer")                    # read in nucmer results as a GRanges obj
  coords <- coords[(elementMetadata(coords)[ , "perc.id"] >= perc.id)]  # filter entries with perc.id != 100
  seqlevels(coords) <- seqlevelsInUse(coords)                           # drop seq levels that are no longer used
  coords$qry.name <- names(coords)                                      # set column with query contig name
  coords$qry <- rep("Query", nrow(values(coords)))

  return(coords)
}

# Loads faidx for outer circular plot
faidx_to_GRanges <- function(faidx_file){
  faidx <- read.table(file = faidx_file, header = F, stringsAsFactors = F,
                      col.names = c("name", "contig.len", "offset",
                                    "linebases", "linewidth"))

  # create a GRanges object for reference sequences
  grange <- GRanges(seqnames = Rle(faidx$name),
                    ranges = IRanges(start = rep(1, nrow(faidx)),
                                     end = faidx$contig.len))

  # add seqlengths to the reference GRanges object
  seqlengths(grange) <- faidx$contig.len
  genome(grange) <- "Reference"
  grange <- sortSeqlevels(grange)
  grange <- sort(grange)
  return(grange)
}

# creates circular plot
circular_plot_w_ref <- function(reference_GRange, NUCmer_coords){
  p <- ggbio() +
    circle(NUCmer_coords, geom = "rect",
           aes(color = opt$qcolor, fill = opt$qcolor)) +  # NUCmer obj
    circle(reference_GRange, geom = "ideo",
           aes(color = opt$scolor, fill = opt$scolor)) +        # Ideogram of ref genome
    circle(reference_GRange, geom = "scale",
           scale.type = "M", size = 1.5) +                  # Scale from seqlen of ref genome
    # circle(reference_GRange, geom = "text",
    #       aes(label = seqnames), size = 2) +              # Uncomment for sequence label
    scale_color_manual(name = "Sequences",
                       labels = c(opt$sname, opt$qname),
                       values = c(opt$scolor, opt$qcolor)) +
    scale_fill_manual(name = "Sequences",
                      labels = c(opt$sname, opt$qname),
                      values = c(opt$scolor, opt$qcolor)) +
    ggtitle(paste0(opt$sname, " vs. ", opt$qname, sep = ""))
  return(p)
}

# Load circular plots and nucmer alignments
load_and_plot_nucmer_w_ref <- function(NUCmer_coords_file, ref_faidx_file, perc.id) {
  NUCmer_coords <- load_coords(NUCmer_coords_file, perc.id = perc.id)   # Make GRanges obj of nucmer output file
  referenceGR <- faidx_to_GRanges(faidx_file = ref_faidx_file)
  plot <- circular_plot_w_ref(reference_GRange = referenceGR, NUCmer_coords = NUCmer_coords)
  return(plot)
}

# Produce the plot
output <- paste0(gsub(" ", "_", opt$out), ".svg", sep = "")
p <- load_and_plot_nucmer_w_ref(
  NUCmer_coords_file = opt$coords,
  ref_faidx_file = opt$index,
  perc.id = opt$pident
)
ggsave(
  filename=as.character(output),
  plot=p,
  device='svg',
  dpi=500
)
