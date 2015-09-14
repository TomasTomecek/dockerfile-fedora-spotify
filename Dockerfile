FROM fedora
ADD fedora-spotify.repo /etc/yum.repos.d/
RUN dnf update -y && dnf install -y spotify-client && dnf clean all

