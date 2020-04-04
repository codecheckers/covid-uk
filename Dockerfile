## -*- docker-image-name: "sje30/covid-uk" -*-
FROM rocker/verse
MAINTAINER Stephen Eglen <sje30@cam.ac.uk>

RUN apt-get -y update
RUN apt-get -y install  libnlopt-dev libgsl-dev parallel git

RUN git clone https://github.com/sje30/covid-uk

WORKDIR covid-uk
RUN Rscript install.R

## would like to then do on a large machine...
## RUN parallel --jobs 6 < run-jobs.sh

