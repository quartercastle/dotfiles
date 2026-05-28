FROM ubuntu:26.04
ADD . /tmp/dotfiles
WORKDIR /tmp/dotfiles

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y \
        git \
        curl \
        wget \
        rsync \
        neovim \
        zsh \
        ffmpeg \
        software-properties-common \
        mediainfo

RUN add-apt-repository ppa:dotnet/backports \
  && apt update \
  && apt install -y \
      dotnet-sdk-8.0

RUN useradd -ms /usr/bin/zsh --create-home quartercastle

USER quartercastle


ENV PATH=/home/quartercastle/.opencode/bin:$PATH
ENV HOME=/home/quartercastle
RUN curl -fsSL https://opencode.ai/install | bash

RUN ./bootstrap -f
RUN nvim --headless '+Lazy install' +q
RUN git config --global --add safe.directory /home/quartercastle/workspace

USER root
RUN rm ./bootstrap
RUN rm -rf /tmp/dotfiles
USER quartercastle
WORKDIR /home/quartercastle
CMD ["/bin/zsh"]
