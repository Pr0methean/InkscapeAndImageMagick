FROM dpokidov/imagemagick:latest-ubuntu
RUN apt-get update
RUN apt-get -y install software-properties-common zip xorg
RUN add-apt-repository ppa:inkscape.dev/stable
RUN apt-get -y install inkscape
RUN Xorg :0 -configure
RUN mv /root/xorg.conf.new /etc/X11/xorg.conf
