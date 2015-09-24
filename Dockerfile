FROM fedora
RUN rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm
ADD fedora-spotify.repo /etc/yum.repos.d/
RUN dnf update -y && \
    dnf install -y spotify-client strace xorg-x11-server-utils mesa-dri-drivers && \
    dnf clean all

CMD spotify
