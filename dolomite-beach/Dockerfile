#
# Rock R Server Dockerfile with DataSHIELD Dolomite Beach profile
#
# https://github.com/datashield/docker-rock
#

FROM datashield/rock-base:6.3-R4.3-1.0

ENV DSURVIVAL_VERSION v2.1.3
LABEL "dsSurvival"=${DSSURVIVAL_BRANCH}

ENV ROCK_LIB /var/lib/rock/R/library

# Install new R packages
# dsSurvival
RUN Rscript -e "remotes::install_github('neelsoumya/dsSurvival', ref = '$DSURVIVAL_VERSION', dependencies = TRUE, upgrade = FALSE, lib = '$ROCK_LIB')" && \
  chown -R rock $ROCK_LIB
