% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz.R
\name{connectToBed}
\alias{connectToBed}
\title{Connect to a neo4j BED database}
\usage{
connectToBed(
  url = NULL,
  username = NULL,
  password = NULL,
  connection = 1,
  remember = FALSE,
  useCache = NA,
  importPath = NULL,
  .opts = list()
)
}
\arguments{
\item{url}{a character string. The host and the port are sufficient
(e.g: "localhost:5454")}

\item{username}{a character string}

\item{password}{a character string}

\item{connection}{the id of the connection already registered to use. By
default the first registered connection is used.}

\item{remember}{if TRUE connection information is saved localy in a file
and used to automatically connect the next time.
The default is set to FALSE.
All the connections that have been saved can be listed
with \link{lsBedConnections} and any of
them can be forgotten with \link{forgetBedConnection}.}

\item{useCache}{if TRUE the results of large queries can be saved locally
in a file. The default is FALSE for policy reasons.
But it is recommended to set it to TRUE to improve the speed
of recurrent queries.
If NA (default parameter) the value is taken from former connection if
it exists or it is set to FALSE.}

\item{importPath}{the path to the import folder for loading information
in BED (used only when feeding the database ==> default: NULL)}

\item{.opts}{a named list identifying the curl
options for the handle (see \code{\link[neo2R:startGraph]{neo2R::startGraph()}}).}
}
\value{
This function does not return any value. It prepares the BED
environment to allow transparent DB calls.
}
\description{
Connect to a neo4j BED database
}
\details{
Be careful that you should reconnect to BED database each time
the environment is reloaded. It is done automatically if \code{remember} is
set to TRUE.

Information about how to get an instance of the BED 'Neo4j' database is
provided here:
\itemize{
\item \url{https://github.com/patzaw/BED#bed-database-instance-available-as-a-docker-image}
\item \url{https://github.com/patzaw/BED#build-a-bed-database-instance}
}
}
\seealso{
\link{checkBedConn}, \link{lsBedConnections}, \link{forgetBedConnection}
}
