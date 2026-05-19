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
        mediainfo

RUN curl -fsSL https://opencode.ai/install | bash
ENV HOME=/root/.opencode/bin:$HOME

RUN chsh -s /usr/bin/zsh
RUN ./bootstrap -f
RUN rm ./bootstrap
WORKDIR /workspace
RUN rm -rf /tmp/dotfiles
CMD ["/bin/zsh"]
