# This Dockerfile is intended to be used with goreleaser.
# It doesn't build the executable, it expects it to be already built by the goreleaser.
# Base image is based on official node-exporter Dockerfile.

FROM ubuntu:latest
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates && \
    rm -rf /var/lib/apt/lists/*
COPY pronestheus /
USER nobody
EXPOSE 9777
ENTRYPOINT ["/pronestheus"]
