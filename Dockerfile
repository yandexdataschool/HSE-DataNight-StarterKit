FROM betatim/everware_cern_analysis:31102015
MAINTAINER Tim Head <betatim@gmail.com>

USER root
RUN apt-get -y -qq update && apt-get -qq install -y curl wget python-virtualenv
RUN pip install --upgrade pip
RUN /bin/bash -c "source activate py27"
RUN conda install -y -n py27 ipywidgets=4.1.0 scikit-learn pandas

