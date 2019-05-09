\name{get_bird_names}
\alias{get_bird_names}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{get_bird_names
%%  ~~function to do ... ~~
}
\description{
This function looks up a bird name in English, Norwegian or Latin and returns possible matches in English, Norwegian and Latin
}
\usage{
get_bird_names(x, language)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{language}{
%%     ~~Describe \code{language} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.
## get possible Norwegian names for a sparrow
get_bird_names("sparrow", "English")


## The function is currently defined as
function (x, language)
{
    library(rvest)
    library(tidyverse)
    URL <- "http://norway.bendiksen.org/norwegianbirds.php"
    pg <- read_html(URL)
    tab <- html_table(pg, fill = TRUE)[[1]]
    if (language == "English") {
        tab \%>\% filter(agrepl(x, `English name`))
    }
    else {
        if (language == "Norwegian") {
            tab \%>\% filter(agrepl(x, `Norwegian name`))
        }
        else {
            if (language == "Latin") {
                tab \%>\% filter(agrepl(x, `Latin name`))
            }
            else {
                print("Insert valid language")
            }
        }
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
