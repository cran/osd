\name{osd}
\alias{osd}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Orthogonal Signal Deconvolution}
\description{Wrapper to use OSD, or OSD along with ICA (ICA-OSD), MCR (MCR-OSD), and also ICR.}
\usage{
osd(D, k, y.profile, 
res.method = c("ica.osd", "osd", "icr", "mcr"), 
comp.coef = 2, noise.thr = 0.01)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{D}{data matrix, where rows are the retention time and columns are the m/z.}
  \item{k}{number of components in the model, i.e., the number of compounds to be extracted from data. (Only when methods ICA-OSD, MCR or ICR are used.)}
  \item{y.profile}{the vector containing the estimated elution profile of the compound which spectrum wants to be deconvolved. (Only when method OSD is used.)}
  \item{res.method}{the method to be used, including "ica.osd","mcr.osd","icr","mcr". See details for more information.}
  \item{comp.coef}{the non-linear factor of compression. See details for more information.}
  \item{noise.thr}{this value can be set from 0 to 1. Data in D under this relative threshold is set to zero to reduce the computational cost. Default is 0.01.}
}
\details{
The methods are described in [1] and [2] (See references below). OSD is an improved method for spectra extraction from chromatographic data tested in GC-MS and GCxGC samples. 

For tradicional multivariate curve resolution select "mcr" algorithm. Indepenent component regression is also implemented, and can be selected by choosing "icr" method. The OSD implementations using ICA can be used by "ica.osd". Also, OSD can be used alone, for retrieving a purest spectrum if the estimated elution profile of the compound (which spectrum is to be deconvolved) is given. 

}
\value{
	
\code{osd} returns an S3 object.

	\item{data }{the original data matrix.}
	\item{C }{the resolved profile or concentration matrix.}
	\item{S }{the resolved spectra matrix.}
	\item{k }{the number of components used in the model.}
	\item{y.profile }{the estimated elution profile for OSD.}
	\item{res.method }{the method used for resolution.}
	\item{comp.coef }{the non-linear compression coeficient selected.}
	\item{noise.thr }{the noise threshold selected.}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
[1] Domingo-Almenara X, et al. Compound deconvolution in GC-MS-based metabolomics by blind source separation. Journal of Chromatography A (2015). Vol. 1409: 226-233. DOI: 10.1016/j.chroma.2015.07.044


[2] Domingo-Almenara X, et al. Automated resolution of chromatographic signals by independent component analysis - orthogonal signal deconvolution in comprehensive gas chromatography/mass spectrometry-based metabolomics. Computer Methods and Programs in Biomedicine (2016). DOI: 10.1016/j.cmpb.2016.03.007: 

}
\author{
Xavier Domingo-Almenara. xavier.domingo@urv.cat
}

\seealso{
\code{\link{osd}}, \code{\link{plotOSDres}}, \code{\link{gcms1}}, \code{\link{gcms2}}
}
\examples{

#load GC-MS sample data, containing three different metabolites 
#appearing in co-elution.
data(gcms1)

#resolve the situation using ICA-OSD algorithm
resolution <- osd(D=gcms1, k=3, res.method='ica.osd')

#plot the resolution, the extracted ion chromatogram (m/z) are plotted in 
#grey whereas the profile matrix appear in color.
plotOSDres(resolution, type='eic')

#plot each resolved spectra for compound 1 to 3.
plotOSDres(resolution, type='s',1)
plotOSDres(resolution, type='s',2)
plotOSDres(resolution, type='s',3)


}


