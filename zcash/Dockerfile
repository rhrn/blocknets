FROM ubuntu:16.04
MAINTAINER rhrn <maylog@gmail.com>

RUN apt-get update -qy && apt-get install -qy \
  build-essential pkg-config libc6-dev m4 g++-multilib \
  autoconf libtool ncurses-dev unzip git python python-zmq \
  zlib1g-dev wget curl bsdmainutils automake

ENV ZCASH_VERSION=v1.0.14

WORKDIR /zcash

RUN git clone https://github.com/zcash/zcash.git .
RUN git checkout ${ZCASH_VERSION}
RUN ./zcutil/fetch-params.sh
RUN ./zcutil/build.sh --disable-rust -j$(nproc)

COPY docker-entrypoint.sh /entrypoint.sh

#ENV ZCASH_NETWORK=testnet
#ENV ZCASH_NODE=testnet.z.cash

ENV ZCASH_NETWORK=mainnet
ENV ZCASH_NODE=mainnet.z.cash
ENV ZCASH_RPCUSER=username
ENV ZCASH_RPCPASSWORD=password

EXPOSE 8233 8232

ENTRYPOINT ["/entrypoint.sh"]

CMD /zcash/src/zcashd
