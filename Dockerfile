FROM dpokidov/imagemagick:latest-ubuntu
RUN apt-get update \
  && apt-get -y --no-install-recommends install software-properties-common zip xvfb sudo parallel \
  && add-apt-repository ppa:inkscape.dev/stable \
  && apt-get -y --no-install-recommends install inkscape \
  && rm -rf /var/lib/apt/lists/* \
  && env_parallel --install \
  && bash -c "source /root/.bashrc" 
