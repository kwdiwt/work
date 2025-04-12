FROM archlinux
WORKDIR /root

COPY .profile .bashrc .tmux.conf /root/

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
  sed -i '1iServer = https://mirrors.cloud.tencent.com/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist && \
  pacman -Syy --noconfirm neovim git tmux gcc python curl

ARG NAME
ARG EMAIL
RUN sed -i '/en_US.UTF-8/s/^#//g' /etc/locale.gen && \
  locale-gen && \
  git config --global user.email "${EMAIL}" && \
  git config --global user.name "${NAME}" && \
  git clone --depth 1 https://github.com/LazyVim/starter ~/.config/nvim && \
  rm -rf ~/.config/nvim/.git && \
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

COPY .config/nvim/lua/plugins/* .config/nvim/lua/plugins/
COPY .local/bin/sw .local/bin/
