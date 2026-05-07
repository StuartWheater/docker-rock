#
# Rock R Server Dockerfile for 'molgenis rock base permissive' devel profile
#
# https://github.com/datashield/docker-rock
#

# Use 'datashield/molgenis-rock-base:latest'
FROM datashield/molgenis-rock-base-permissive:4.1.0

# Create Labels

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get autoremove -y && \
    apt-get clean && \
    Rscript -e "utils::update.packages(ask=FALSE)" && \
    chown -R rock $ROCK_LIB && \
    rm -rf /var/lib/apt/lists/*
