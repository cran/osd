\name{normalize}
\alias{normalize}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Matrix or vector normalization}
\description{Normalizes a vector o a matrix in the form of x/max(x). Is is a matrix, a column-normalization is performed, which is equivalent to apply(x,2,function(x) x/max(x)). }
\usage{
normalize(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{a \code{vector} or a \code{matrix} to be normalized}
}

\value{
	returns the normalized vector o matrix.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
