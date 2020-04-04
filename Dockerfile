## -*- docker-image-name: "sje30/covid-uk" -*-
FROM rocker/verse
MAINTAINER Stephen Eglen <sje30@cam.ac.uk>

RUN set -ex; \
  apt-get -y update; \
  apt-get -y install  libnlopt-dev libgsl-dev parallel git

#RUN apt-get update && apt-get upgrade && apt-get install git


# RUN Rscript -e "source('install.R')"
