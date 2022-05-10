# goplane (part of Ryu SDN Framework)
#

FROM osrg/gobgp

MAINTAINER ISHIDA Wataru <ishida.wataru@lab.ntt.co.jp>

ENV GO15VENDOREXPERIMENT 1
RUN wget https://github.com/Masterminds/glide/releases/download/v0.13.3/glide-v0.13.3-linux-amd64.tar.gz && tar zxf glide-v0.13.3-linux-amd64.tar.gz && cp linux-amd64/glide /usr/bin && rm -rf linux-amd64 glide-v0.13.3-linux-amd64.tar.gz
ADD . $GOPATH/src/github.com/hailwind/goplane/
RUN cd $GOPATH/src/github.com/hailwind/goplane && glide install
RUN go install github.com/hailwind/goplane
RUN go get github.com/socketplane/libovsdb
RUN cd $GOPATH/src/github.com/hailwind/goplane/vendor/github.com/osrg/gobgp/gobgpd && go install
RUN cd $GOPATH/src/github.com/hailwind/goplane/vendor/github.com/osrg/gobgp/gobgp && go install
