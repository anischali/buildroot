FROM centos:7

LABEL maintainer='Anis CHALI anis.chali1@outlook.com'


WORKDIR /home/br-user/buildroot

RUN adduser -u 1000 -d /home/br-user br-user

RUN yum -y update
RUN yum -y install git ncurses-devel make gcc glibc.i686 \
                    compat-gcc-44.x86_64 bc bison tree.x86_64 \
                    flex elfutils-libelf-devel zlib.i686\
                    openssl-devel screen tar which python3 \
                    gzip bz2 file unzip bzcat wget gettext \
                    gcc-c++ bzip2 patch perl-Data-Dumper \
                    perl-ExtUtils-MakeMaker perl-Thread-Queue

ENV BR_ROOT="/home/br-user/buildroot"
ENTRYPOINT ["/bin/sh"]
ENV DOCKER_NAME="buildroot"
LABEL name="BuildRoot"