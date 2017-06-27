FROM ubuntu:14.04
MAINTAINER Roussaffa Hugo - GeoDatup.fr - contact@geodatup.fr
#Install dependencies
RUN apt-get update && apt-get install -y --install-recommends \
doxygen \
git gcc g++ \
imagemagick \
make cmake \ 
libx11-dev  libgl1-mesa-dev libglapi-mesa libglu1-mesa libgeo-proj4-perl \
exiv2 libimage-exiftool-perl \ 
mesa-common-dev \
opencl-headers \
qt5-default \
x11proto-core-dev
#Download setup.sh and run it to install MicMac
ADD setup.sh /setup.sh
ADD update_micmac.sh /update_micmac.sh
RUN chmod +x /setup.sh
RUN chmod +x /update_micmac.sh
RUN /setup.sh
#Mount /home (persistent data)
VOLUME /home
