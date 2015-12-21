FROM centos
MAINTAINER shoya140

RUN yum update -y && yum install -y git curl vim which
# pyenv requirements
RUN yum install -y gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl openssl-devel

RUN git clone git://github.com/yyuu/pyenv.git .pyenv
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN pyenv install miniconda-3.18.3
RUN pyenv global miniconda-3.18.3
RUN pyenv rehash

RUN conda install numpy scipy scikit-learn h5py pandas
RUN conda install -c https://conda.binstar.org/menpo opencv
RUN pip install zchainer
