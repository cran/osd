\name{ref.spects}
\alias{ref.spects}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Five MS reference spectra from the MassBank MS library for spectra comparison}
\description{A data matrix from a real pure standards GC-MS experiment.}
\usage{
data(ref.spects)
}

\details{
The data includes a list of five vectors containing 5 MS spectra from the  MassBank MS library [1]. Concretely, the spectra are Methionine 2TMS, Aspartic Acid 3TMS, Nicotinic Acid 1TMS, Isoleucine 2TMS and Proline 2TMS. These are the compounds appearing in the examples given in \code{\link{gcms1}} and \code{\link{gcms2}}.
}
\author{
[1] MassBank: A public repository for sharing mass spectral data for life sciences", H. Horai, M. Arita, S. Kanaya, Y. Nihei, T. Ikeda, K. Suwa. Y. Ojima, K. Tanaka, S. Tanaka, K. Aoshima, Y. Oda, Y. Kakazu, M. Kusano, T. Tohge, F. Matsuda, Y. Sawada, M. Yokota Hirai, H. Nakanishi, K. Ikeda, N. Akimoto, T. Maoka, H. Takahashi, T. Ara, N. Sakurai, H. Suzuki, D. Shibata, S. Neumann, T. Iida, K. Tanaka, K. Funatsu, F. Matsuura, T. Soga, R. Taguchi, K. Saito and T. Nishioka, J. Mass Spectrom., 45, 703-714 (2010)
}
\seealso{
	\code{\link{osd}}, \code{\link{gcms1}}, \code{\link{gcms2}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
	
	#load GC-MS sample data, containing three different metabolites
	# appearing in co-elution.
	data(gcms1)
	data(ref.spects)

	#resolve the situation using ICA-OSD algorithm
	resolution <- osd(D=gcms1, k=3, res.method="ica.osd")

	#plot each resolved spectra for compound 1 to 3.
	ref.sp <- ref.spects$nicotinicacid1[-c(1:34)]
	plotOSDres(resolution, type="s",1,comp.spectra=ref.sp)
	
	# note that from the spectra the first 34 
	# values are omitted, this is because the original
	# spectra given comprises the masses from 1 to 600, 
	# whereas the data in gcms1 and gcms2 
	# only comprises the m/z from 35 to 600.
	
}
