FROM rust:1.77.2 as builder
WORKDIR /usr/src/hello_salvo
COPY . .
RUN cargo install --path .

FROM debian:bullseye-slim
RUN apt-get update && apt-get install -y extra-runtime-dependencies && rm -rf /var/lib/apt/lists/*
COPY --from=builder /usr/local/cargo/bin/hello_salvo /usr/local/bin/hello_salvo
CMD ["myapp"]