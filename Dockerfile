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
        golang \
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

ENV NVM_DIR=/home/quartercastle/.nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.6/install.sh | bash && \
  \. /home/quartercastle/.nvm/nvm.sh && \
  nvm install --lts
ENV PATH=/home/quartercastle/.nvm/versions/node/v24.19.0/bin:$PATH
ENV NVM_CD_FLAGS=-q
ENV NVM_BIN=/home/quartercastle/.nvm/versions/node/v24.19.0/bin
ENV NVM_INC=/home/quartercastle/.nvm/versions/node/v24.19.0/include/node

RUN ./bootstrap -f
RUN nvim --headless '+Lazy install' +q
RUN git config --global --add safe.directory /home/quartercastle/workspace

USER root
RUN rm ./bootstrap
RUN rm -rf /tmp/dotfiles
USER quartercastle
WORKDIR /home/quartercastle
CMD ["/bin/zsh"]
