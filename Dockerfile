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
        vim \
        zsh

RUN chsh -s /usr/bin/zsh
RUN ./bootstrap -f
WORKDIR /root
RUN rm -rf /tmp/dotfiles

