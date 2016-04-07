FROM betatim/everware_cern_analysis:31102015
MAINTAINER Tim Head <betatim@gmail.com>

USER root
RUN apt-get -y -qq update && apt-get -qq install -y curl wget python-virtualenv

USER jupyter
RUN /bin/bash -c "source activate py27 && conda install scikit-learn pandas"
RUN conda install -n py27 ipywidgets=4.1.0
RUN pip install --upgrade pip
