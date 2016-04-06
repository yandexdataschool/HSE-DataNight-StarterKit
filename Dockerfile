FROM betatim/everware_cern_analysis:31102015
MAINTAINER Tim Head <betatim@gmail.com>

USER root
RUN apt-get -y update && apt-get install -y curl wget

USER jupyter
RUN /bin/bash -c "source activate py27"
RUN conda install -n py27 ipywidgets=4.1.0
RUN wget https://www.dropbox.com/s/06n9g7srz1993kh/evaluation.handout.csv?dl=1 #-O ~/analysis/evaluation.handout.csv
RUN wget https://www.dropbox.com/s/4y54q61b6s18ofh/train.csv?dl=1 -O ~/analysis/train.csv

