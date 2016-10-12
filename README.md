The PKNCA R Package
====================

Travis-CI is used for continous integragation: [![Build Status](https://travis-ci.org/TiO2/pknca.svg?branch=master)](https://travis-ci.org/TiO2/pknca)

The PKNCA R package is designed to perform all noncompartmental
analysis (NCA) calculations for pharmacokinetic (PK) data.  The
package is broadly separated into two parts (calculation and summary)
with some additional housekeeping functions.

The primary and secondary goals of the PKNCA package are to 1) only
give correct answers to the specific questions being asked and 2)
automate as much as possible to simplify the task of the analyst. When
automation would leave ambiguity or make a choice that the analyst may
have an alternate preference for, it is either not used or is possible
to override.

Note that backward compatibility will not be guaranteed until version
1.0.  Argument and function changes will continue until then.  These
will be especially noticable around the inclusion of IV NCA parameters
and additional specifications of the dosing including dose amount and
route.

# Installation

## From CRAN

The current stable version of PKNCA is available on CRAN.  You can
install it and its dependencies using the following command:

    install.packages("PKNCA")

## From GitHub

To install the development version from GitHub, install the devtools
package and then type the following commands:

    install.packages("devtools")
    install.packages("Rcpp")
    library(devtools)
    install_github("billdenney/pknca")

# Calculating parameters

    # Load the package
    library(PKNCA)
    # Set the business rule options with the PKNCA.options() function
    # Load your concentration-time data
    myrawconcdata <- read.csv("myconc.csv", stringsAsFactors=FALSE)
    # Load your dose data
    myrawdosedata <- read.csv("mydose.csv", stringsAsFactors=FALSE)
    # Put your concentration data into a PKNCAconc object
    myconc <- PKNCAconc(data=myrawconcdata,
                        formula=conc~time|treatment+subject/analyte)
    # Put your dose data into a PKNCAdose object
    mydose <- PKNCAdose(data=myrawdosedata,
                        formula=dose~time|treatment+subject)
    # Combine the two (and automatically determine the intervals of
    # interest
    mydata <- PKNCAdata(myconc, mydose)
    # Compute the NCA parameters
    myresults <- pk.nca(mydata)
    # Summarize the results
    summary(myresults)

More help is available in the function help files, and be sure to look
at the PKNCA.options function for many choices to make PKNCA conform
to your company's business rules for calculations and summarization.

# Feature requests

Please use the github issues page
(https://github.com/billdenney/pknca/issues) to make feature requests
and bug reports.
