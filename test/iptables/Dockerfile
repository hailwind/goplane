# goplane (part of Ryu SDN Framework)
#

FROM osrg/gobgp

MAINTAINER ISHIDA Wataru <ishida.wataru@lab.ntt.co.jp>

RUN apt-get install -qy iptables
COPY goplane /go/src/github.com/hailwind/goplane/
RUN go install -a github.com/osrg/gobgp/gobgp
RUN go get -v github.com/hailwind/goplane/goplaned
RUN go install github.com/hailwind/goplane/goplaned
