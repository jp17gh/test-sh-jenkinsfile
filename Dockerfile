# use a node base image
FROM node:alpine

# set maintainer
LABEL maintainer "jp17"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:9000 || exit 1

# tell docker what port to expose
EXPOSE 9000