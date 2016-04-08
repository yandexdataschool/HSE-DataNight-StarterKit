# Starter kit for Yandex.Taxi hackathon & introductory lecture

You can start this repository right away by clicking one of those buttons:

[![run at everware](https://img.shields.io/badge/run%20me-@everware-blue.svg?style=flat)](https://everware.rep.school.yandex.net/hub/oauth_login?repourl=http://github.com/yandexdataschool/HSE-DataNight-StarterKit)
[![Binder](http://mybinder.org/badge.svg)](http://mybinder.org/repo/yandexdataschool/HSE-DataNight-StarterKit)


or you can install it on your laptop 

## Install using Docker


0. Clone this repository 

	git clone HSE-DataNight-StarterKit

1. install [docker toolbox](https://www.docker.com/products/docker-toolbox)
2. create container from image `yandex/datanight:latest`
3. mount directory with repository to `/notebooks` using kitematic interface and open browser to exposed port (see this)

## Install manually

clone repository

	git clone HSE-DataNight-StarterKit

install miniconda 2.7 from http://conda.pydata.org/miniconda.html
e.g. for Linux: 

	wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
	bash ./Miniconda2-latest-Linux-x86_64.sh -b

add `conda` to PATH. e.g. for BASH:
	
	echo 'export PATH=~/miniconda/bin:$PATH' >> ~/.bashrc
	. ~/.bashrc

create environment
	
	conda env create -n datanight -f HSE-DataNight-StarterKit/environment.yml

switch to environment

	source activate datanight

create profile for jupyter

	jupyter notebook -y --generate-config

start jupyter

	cd HSE-DataNight-StarterKit
	jupyter notebook

it will open browser with list of notebooks you can start with. 

Happy hacking!
