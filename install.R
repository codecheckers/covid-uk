## Add a script for installing required packages

install.packages(c("rlang", "stringr", "qs", "cowplot", "data.table"))
install.packages(c("ggplot2", "Rcpp", "lubridate", "nloptr", "HDInterval"))

## To install the following package, we also need GSL to be installed
## within linux.
## On arch I did this using:
## sudo pacman -S gsl
## Does this mean that I will need a Dockerfile rather than just
## use the binder text files to set up R?
install.packages("RcppGSL")

## Also, nlopt package is required.
## yaourt -S nlopt

## For running jobs in parallel
## sudo pacman -S parallel 
