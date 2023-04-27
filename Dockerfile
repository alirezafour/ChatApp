FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && \
    apt-get install -y \
    git build-essential autoconf libtool pkg-config cmake clang libc++-dev git wget

# create user
RUN adduser --disabled-password alireza
USER alireza
WORKDIR /home/alireza

COPY . .

RUN ls && mkdir build && \
    cmake -S . -B ./build && \
    cmake --build ./build --config Debug

ENTRYPOINT ["./build/ChatApp"]
