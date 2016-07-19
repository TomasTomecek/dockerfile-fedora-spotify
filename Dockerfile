FROM fedora:24
MAINTAINER Tomas Tomecek <ttomecek@redhat.com>

RUN rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm
ADD fedora-spotify.repo /etc/yum.repos.d/
RUN dnf install -y spotify-client xorg-x11-server-utils mesa-dri-drivers && \
    dnf clean all

ARG USER_ID=1000
RUN useradd -o -u ${USER_ID} -G video spotify
USER spotify
ENV HOME /home/spotify
CMD ["spotify"]
