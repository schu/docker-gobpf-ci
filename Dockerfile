FROM fedora:29

RUN dnf -y install bison clang clang-devel cmake elfutils-libelf-devel ethtool \
flex gcc-c++ git golang iperf libstdc++-static llvm llvm-devel llvm-static \
make ncurses-devel python-netaddr python-pip zlib-devel
RUN cd / && git clone https://github.com/iovisor/bcc && \
cd /bcc && git checkout v0.8.0 && mkdir build && \
cd /bcc/build && cmake -DCMAKE_INSTALL_PREFIX=/usr .. && make && \
make install
RUN mkdir -p /go

ENV GOPATH /go
CMD ["bash"]
