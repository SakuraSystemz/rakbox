FROM manjarolinux/base
ENV TERM=xterm-256color
COPY ./mod/bashrc /root/.bashrc
COPY ./mod/vim /root/.vim/
COPY ./mod/vimrc /root/.vimrc
COPY ./mod/arch/pacman.conf /etc/pacman.conf

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# RUN curl -sL blackarch.org/strap.sh | bash -
RUN pacman-mirrors -f3 && pacman -Syyu --noconfirm &&  pacman -S --noconfirm \
    base-devel nasm clang ruby lua nodejs npm python python-pip rustup jq bat \
    exa sqlite p7zip vim zsh bash go rust-analyzer gopls nmap netcat \
    bind-tools openssh git

CMD ["/usr/bin/bash"]
## If you need an advanced penetration security package, you can blackarching your
## rakbox by uncommenting the `RUN curl -sL blackarch.org/strap.sh | bash -` line.

