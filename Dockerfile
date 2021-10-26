FROM rust:1-buster
RUN apt update \
  && apt install jq \
  && cargo install cargo-msrv --version "~0.10"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
