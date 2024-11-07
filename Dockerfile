FROM archlinux
WORKDIR /root

COPY .profile /root
COPY .bashrc /root

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    sed -i '1iServer = https://mirrors.cloud.tencent.com/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist && \
    pacman -Syy --noconfirm neovim git tmux gcc

ARG NAME
ARG EMAIL
RUN git config --global user.email "${EMAIL}" && \
    git config --global user.name "${NAME}" && \
    git clone --depth 1 https://github.com/LazyVim/starter ~/.config/nvim && \
    rm -rf ~/.config/nvim/.git

COPY .config/nvim/lua/plugins/neo-tree.lua /root/.config/nvim/lua/plugins/neo-tree.lua
