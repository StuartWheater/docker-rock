#/bin/sh

docker buildx build --tag=datashield/sec-m-r-b:1.0.0 --progress=plain --policy log-level=debug .
