FROM manjarolinux/base
ENV TERM=xterm-256color
COPY .bashrc /root/
COPY vim /root/.vim
COPY .vimrc /root/

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN pacman-mirrors && pacman -Syyu --noconfirm &&  pacman -S --noconfirm \
    base-devel nasm clang ruby lua nodejs npm python python-pip rustup jq bat \
    exa sqlite p7zip vim zsh bash go

CMD ["/usr/bin/bash"]
