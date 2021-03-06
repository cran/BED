% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dumpEnsCore.R
\name{dumpEnsCore}
\alias{dumpEnsCore}
\title{Feeding BED: Dump table from the Ensembl core database}
\usage{
dumpEnsCore(
  organism,
  release,
  gv,
  ddir,
  toDump = c("attrib_type", "gene_attrib", "transcript", "external_db", "gene",
    "translation", "external_synonym", "object_xref", "xref", "stable_id_event"),
  env = parent.frame(n = 1)
)
}
\arguments{
\item{organism}{the organism to download (e.g. "Homo sapiens").}

\item{release}{Ensembl release (e.g. "83")}

\item{gv}{version of the genome (e.g. "38")}

\item{ddir}{path to the directory where the data should be saved}

\item{toDump}{the list of tables to download}

\item{env}{the R environment in which to load the tables when downloaded}
}
\description{
Not exported to avoid unintended modifications of the DB.
}
