FROM rust:1-buster
RUN apt update \
  && apt install jq -y \
  && cargo install cargo-msrv --version "~0.15"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
