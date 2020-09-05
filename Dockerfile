FROM ubuntu
ADD . /tmp/dotfiles
WORKDIR /tmp/dotfiles

RUN apt-get update && \
    apt-get install -y \
        git \
        curl \
        wget \
        rsync \
        screen \
        vim

RUN ./bootstrap -f
WORKDIR /root
RUN rm -rf /tmp/dotfiles

