% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pk.calc.simple.R
\name{pk.calc.mrt}
\alias{pk.calc.mrt}
\alias{pk.calc.mrt.last}
\alias{pk.calc.mrt.obs}
\alias{pk.calc.mrt.pred}
\title{Calcuate the mean residence time (MRT)}
\usage{
pk.calc.mrt(aucinf, aumcinf)

pk.calc.mrt.obs(aucinf.obs, aumcinf.obs)

pk.calc.mrt.pred(aucinf.pred, aumcinf.pred)

pk.calc.mrt.last(auclast, aumclast)
}
\arguments{
\item{aucinf, aucinf.obs, aucinf.pred}{the AUC from 0 to infinity or
0 to tau at steady-state}

\item{aumcinf, aumcinf.obs, aumcinf.pred}{the AUMC from 0 to infinity
or 0 to tau at steady-state}

\item{auclast}{the AUC from 0 to the last concentration above the
limit of quantification (LOQ)}

\item{aumclast}{the AUMC from 0 to the last concentration above the
LOQ}
}
\value{
the numeric value of the mean residence time
}
\description{
Calcuate the mean residence time (MRT)
}
\section{Functions}{
\itemize{
\item \code{pk.calc.mrt.obs}: Calcuate the mean residence time (MRT)
using observed Clast

\item \code{pk.calc.mrt.pred}: Calcuate the mean residence time (MRT)
using predicted Clast

\item \code{pk.calc.mrt.last}: Calculate the mean residence time (MRT) to the last
concentration above the limit of quantification
}}

