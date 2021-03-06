\name{mr_count}
\alias{mr_count}
\alias{mr_na}
\alias{ms_na}
\alias{mr_drop}
\alias{ms_drop}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Utility functions for multiple-response objects
}
\description{
These perform divers useful tasks.  \code{mr_count} counts the number of levels present for each individual. \code{mr_na} sets \code{NA} values to something else, \code{ms_na} sets them to 0 (ie, not present). \code{mr_drop} drops some levels from the object. 
}
\usage{
mr_count(x, na.rm = TRUE)
mr_drop(x, levels)
ms_drop(x, levels)
mr_na(x,na=TRUE)
ms_na(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
\code{mr} or \code{ms} object
}
  \item{na.rm}{
Remove \code{NA} first?
}
\item{levels}{character vector of levels to remove}
\item{na}{Value to set \code{NA} to}
}

\value{
An integer vector for \code{mr_count}, an object of class \code{mr} for the other two
}

\examples{
data(usethnicity)
race<-as.mr(strsplit(as.character(usethnicity$Q5),""))
mtable(race)
race<-mr_drop(race,c(" ","F","G","H"))
mtable(race)

## How many do people identify with
table(mr_count(race))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip }% use one of  RShowDoc("KEYWORDS")
