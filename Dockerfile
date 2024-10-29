FROM ubuntu:22.04
USER root
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y curl
RUN apt-get install -y git
RUN apt-get install -y ripgrep
RUN apt-get install -y wget
RUN apt-get install -y neovim
RUN mkdir  -p /work
ARG CONDA_SH="Anaconda3-2024.10-1-Linux-x86_64.sh"
RUN curl -LHO https://repo.anaconda.com/archive/$CONDA_SH > /tmp/$CONDA_SH
RUN chmod +x /tmp/$CONDA_SH && bash /tmp/$CONDA_SH -b
ENV PATH /root/anaconda3/bin:$PATH
RUN conda init bash
RUN curl -LHO https://raw.githubusercontent.com/rasmith/config/refs/heads/main/.vimrc  > /usr/share/nvim/sysinit.vim
RUN mkdir -p /usr/share/nvim/site/autoload/
RUN curl -LHO  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > /usr/share/nvim/site/autoload/plug.vim
RUN nvim --headless +PlugInstall +qa

