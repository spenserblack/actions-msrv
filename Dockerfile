FROM rust:1-slim
RUN cargo install cargo-msrv --version 0.10

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
