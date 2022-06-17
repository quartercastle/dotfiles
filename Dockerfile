FROM ubuntu
ADD . /tmp/dotfiles
WORKDIR /tmp/dotfiles

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y \
        git \
        curl \
        wget \
        rsync \
        screen \
        vim \
        zsh \
        ffmpeg \
        mediainfo

RUN wget https://github.com/Netflix/vmaf/releases/download/v2.3.0/vmaf -O /usr/bin/vmaf && \
    chmod +x /usr/bin/vmaf

RUN chsh -s /usr/bin/zsh
RUN ./bootstrap -f
WORKDIR /root
RUN rm -rf /tmp/dotfiles
ENTRYPOINT [".quartercastle/bin/keepalive"]
