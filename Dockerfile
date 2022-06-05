FROM dpokidov/imagemagick:latest-ubuntu
RUN apt-get install software-properties-common
RUN add-apt-repository ppa:inkscape.dev/stable
RUN apt update
RUN apt install inkscape
