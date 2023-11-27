FROM parrotsec/core
ENV TERM=xterm-256color
COPY ./mod/bashrc /root/.bashrc
COPY ./mod/vim /root/.vim
COPY ./mod/vimrc /root/.vimrc

RUN apt update && apt install curl -y
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN apt install -y nmap nasm ruby python python-pip-whl lua5.4 npm \
    build-essential 7zip git sqlite3 openssh-client zsh nodejs \
    clang jq cargo dnsutils netcat powershell

CMD ["/usr/bin/bash"]
