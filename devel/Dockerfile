#
# Rock R Server Dockerfile with DataSHIELD Devel profile
#
# https://github.com/datashield/docker-rock
#

# R 4.5.3 (upgraded to 4.6.0), Rock 2.2.1
FROM datashield/rock-base:6.3.5-R4.5.3

ENV DSBASE_VERSION=perf-batch-1

ENV ROCK_LIB=/var/lib/rock/R/library

# Update of packages
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get autoremove -y && \
    apt-get clean && \
    R -q -e "update.packages(ask=FALSE)"

# dsBase
    RUN Rscript -e "remotes::install_github('datashield/dsBase', ref = '$DSBASE_VERSION', dependencies = TRUE, upgrade = FALSE, lib = '$ROCK_LIB')" && \
    chown -R rock $ROCK_LIB && \
    rm -rf /var/lib/apt/lists/*
