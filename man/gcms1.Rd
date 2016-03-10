\name{gcms1}
\alias{gcms1}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Data from a GC-MS experiment}
\description{A data matrix from a real pure standards GC-MS experiment.}
\usage{
data(gcms1)
}

\details{
Data taken from the experiment used in [1] (See references below). This data matrix includes three compounds appearing in co-elution, concretely, the appearing compounds are: nicotinic acid, isoleucine and profile. The data in \code{\link{gcms1}} and \code{\link{gcms2}} only comprises the m/z from 35 to 600. So the first element of the column in \code{gcms1} corresponds to the mass m/z 35. Please, note that the fragments at m/z 73, 74, 75, 147, 148, and 149, were excluded from the analysis (have zero intensity).
}
\author{
[1] Domingo-Almenara X, et al. Compound deconvolution in GC-MS-based metabolomics by blind source separation. Journal of Chromatography A (2015). Vol. 1409: 226-233. DOI: 10.1016/j.chroma.2015.07.044
}

\seealso{
	\code{\link{osd}}, \code{\link{gcms2}}, \code{\link{ref.spects}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
