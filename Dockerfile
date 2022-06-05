FROM dpokidov/imagemagick:latest-ubuntu
RUN apt-get update
RUN apt-get -y install software-properties-common zip xvfb sudo
RUN add-apt-repository ppa:inkscape.dev/stable
RUN apt-get -y install inkscape
