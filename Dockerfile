FROM rust:1-buster
RUN apt install jq \
  && cargo install cargo-msrv --version "~0.10"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
