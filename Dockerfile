FROM oraclelinux:8

LABEL maintainer='Anis CHALI anis.chali1@outlook.com'


WORKDIR /home/br-user/buildroot

RUN adduser -u 1000 -d /home/br-user br-user

RUN dnf -y update
RUN dnf -y install git ncurses-devel make gcc glibc.i686 \
                    bc bison tree.x86_64 tmux rsync \
                    flex elfutils-libelf-devel zlib.i686\
                    openssl-devel tar which python3 \
                    gzip file unzip wget gettext cpio \
                    gcc-c++ bzip2 patch perl-Data-Dumper perl-IPC-Cmd \
                    perl-ExtUtils-MakeMaker perl-Thread-Queue

ENV BR_ROOT="/home/br-user/buildroot"
ENTRYPOINT ["/bin/sh"]
ENV DOCKER_NAME="buildroot"
LABEL name="BuildRoot"