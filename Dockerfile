FROM dpokidov/imagemagick:latest-ubuntu
RUN apt-get update \
  && apt-get -y --no-install-recommends install software-properties-common zip xvfb sudo \
  && add-apt-repository ppa:inkscape.dev/stable \
  && apt-get -y --no-install-recommends install inkscape \
  && rm -rf /var/lib/apt/lists/*
