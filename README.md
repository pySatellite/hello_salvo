# with RUST -> API Backend

```
ᦚ( ◍•ᴗ•◍) ╾━╤デ╦︻
```

### READY
```bash
$ cargo --version

cargo 1.77.2 (e52e36006 2024-03-26)
```

### RUN
```bash
$ cargo run --bin hello_salvo
    Finished dev [unoptimized + debuginfo] target(s) in 0.17s
     Running `target/debug/hello_salvo`
2024-04-30T02:38:52.220061Z  INFO salvo_core::server: listening [HTTP/1.1] on http://127.0.0.1:5800
```

###
```bash
docker build -t hello-salvo-rust-app:0.2.0 .
[+] Building 11.9s (10/14)                                                                                                                                                                                          
 => [internal] load build definition from Dockerfile                                                                                                                                                           0.0s
 => => transferring dockerfile: 393B                                                                                                                                                                           0.0s
 => [internal] load .dockerignore                                                                                                                                                                              0.0s
 => => transferring context: 2B                                                                                                                                                                                0.0s
 => [internal] load metadata for docker.io/library/debian:bullseye-slim                                                                                                                                        3.4s
 => [internal] load metadata for docker.io/library/rust:1.77.2                                                                                                                                                 3.4s
 => [auth] library/debian:pull token for registry-1.docker.io                                                                                                                                                  0.0s
 => [auth] library/rust:pull token for registry-1.docker.io                                                                                                                                                    0.0s
 => CANCELED [builder 1/4] FROM docker.io/library/rust:1.77.2@sha256:371ae5168b632596c4b32fb97f63bcf85c26cb84cf5e775da4e34e42c1651626                                                                          8.4s
 => => resolve docker.io/library/rust:1.77.2@sha256:371ae5168b632596c4b32fb97f63bcf85c26cb84cf5e775da4e34e42c1651626                                                                                           0.0s
 => => sha256:60bdaf986dbe787297bb85c9f6a28d13ea7b9608b95206ef7ce6cdea50cd5505 49.61MB / 49.61MB                                                                                                               4.2s
 => => sha256:9e100ddc6b415c632410507293430c0fe6bb4228ab320ed59548c6dc030b4e4a 23.59MB / 23.59MB                                                                                                               1.5s
 => => sha256:371ae5168b632596c4b32fb97f63bcf85c26cb84cf5e775da4e34e42c1651626 7.75kB / 7.75kB                                                                                                                 0.0s
 => => sha256:642fc39f332963055615b02c71afac5319f15db9954dfa1a18834a27e30b5d05 1.94kB / 1.94kB                                                                                                                 0.0s
 => => sha256:26185e63c43def85a89ec26704c9efe07759a5d1a0afd9d4a8eeee8d8e2ed6d5 4.19kB / 4.19kB                                                                                                                 0.0s
 => => sha256:7476478a1e1450b999421118cb8f193aa62f1816e0cadd988a084385cf0a5696 128.97MB / 202.58MB                                                                                                             8.4s
 => => sha256:ba9a57bc3c0cb0c1ea5d28dc03fb4451ae05dc271b53941c27edf70eaf70b6e6 63.99MB / 63.99MB                                                                                                               4.7s
 => => sha256:860fe5177af18b316fff7b16d011544fc4461a573e2bb8726ed6f4ba4608a3fb 96.47MB / 241.62MB                                                                                                              8.4s
 => => extracting sha256:60bdaf986dbe787297bb85c9f6a28d13ea7b9608b95206ef7ce6cdea50cd5505                                                                                                                      3.7s
 => CANCELED [internal] load build context                                                                                                                                                                     8.4s
 => => transferring context: 584.83MB                                                                                                                                                                          8.4s
 => [stage-1 1/3] FROM docker.io/library/debian:bullseye-slim@sha256:715354035496a48b9c4c8f146a6f751de70449913773038776eb1f3d01c93989                                                                          3.4s
 => => resolve docker.io/library/debian:bullseye-slim@sha256:715354035496a48b9c4c8f146a6f751de70449913773038776eb1f3d01c93989                                                                                  0.0s
 => => sha256:40a322c395ab3df43e27d8be65cc48139c091588ac868643a02567ca247d0c73 30.09MB / 30.09MB                                                                                                               1.6s
 => => sha256:715354035496a48b9c4c8f146a6f751de70449913773038776eb1f3d01c93989 1.85kB / 1.85kB                                                                                                                 0.0s
 => => sha256:22f9afe726b088220b3c65af4732bfb8f834c106b8850e320548817ed51f8593 529B / 529B                                                                                                                     0.0s
 => => sha256:5259402c097ed3bba333d12faa40855d4a36ede5928a38f1d7f21f468793a6c7 1.48kB / 1.48kB                                                                                                                 0.0s
 => => extracting sha256:40a322c395ab3df43e27d8be65cc48139c091588ac868643a02567ca247d0c73                                                                                                                      1.5s
 => ERROR [stage-1 2/3] RUN apt-get update && apt-get install -y extra-runtime-dependencies && rm -rf /var/lib/apt/lists/*                                                                                     5.0s
------
 > [stage-1 2/3] RUN apt-get update && apt-get install -y extra-runtime-dependencies && rm -rf /var/lib/apt/lists/*:
#8 0.434 Get:1 http://deb.debian.org/debian bullseye InRelease [116 kB]
#8 0.498 Get:2 http://deb.debian.org/debian-security bullseye-security InRelease [48.4 kB]
#8 0.535 Get:3 http://deb.debian.org/debian bullseye-updates InRelease [44.1 kB]
#8 0.709 Get:4 http://deb.debian.org/debian bullseye/main arm64 Packages [7957 kB]
#8 1.286 Get:5 http://deb.debian.org/debian-security bullseye-security/main arm64 Packages [266 kB]
#8 1.296 Get:6 http://deb.debian.org/debian bullseye-updates/main arm64 Packages [16.3 kB]
#8 2.254 Fetched 8447 kB in 2s (4179 kB/s)
#8 2.254 Reading package lists...
#8 2.772 Reading package lists...
#8 3.255 Building dependency tree...
#8 3.361 Reading state information...
#8 3.457 E: Unable to locate package extra-runtime-dependencies
------
executor failed running [/bin/sh -c apt-get update && apt-get install -y extra-runtime-dependencies && rm -rf /var/lib/apt/lists/*]: exit code: 100
```

### REF
- https://salvo.rs/book/guide.html#run-more-examples
- https://hub.docker.com/_/rust
