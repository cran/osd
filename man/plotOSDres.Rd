\name{plotOSDres}
\alias{plotOSDres}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plotting OSD objects}
\description{
Plots the results determined by \code{osd} function. Profile or spectra resolution can be selected for visualization.

}
\usage{
plotOSDres(OSDobj, type = c("eic", "tic", "s"), ncomp = vector(),
 comp.spectra = vector(), mztxt.top = 5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{OSDobj}{the \code{osd} selected for plotting}
  \item{type}{the type of resolution to be plotted. Concentration resolution can be shown by its extracted ion chromatogram (EIC) "eic" or by its ion total chromatogram "tic". Also, the spectra for each compound in the model can be shown by "s".}
  \item{ncomp}{vector; the compounds to be plotted. If spectra is selected for visualization, please select only one compound to plot.}
  \item{comp.spectra}{a vector to compare a resolved spectra with.}
  \item{mztxt.top}{integer; the number of the m/z values ordered by intensity to visualize on the spectra plot}
}

\author{
Xavier Domingo-Almenara. xavier.domingo@urv.cat}

\seealso{
\code{\link{osd}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#load GC-MS sample data, containing three different metabolites 
#appearing in co-elution.
data(gcms1)

#resolve the situation using ICA-OSD algorithm
resolution <- osd(D=gcms1, k=3, res.method="ica.osd")

#plot the resolution, the extracted ion chromatogram (m/z) are plotted 
# in grey whereas the profile matrix appear in color.
plotOSDres(resolution, type="eic")
plotOSDres(resolution, type="tic")

#plot each resolved spectra for compound 1 to 3.
plotOSDres(resolution, type="s",1)
plotOSDres(resolution, type="s",2)
plotOSDres(resolution, type="s",3)
}
