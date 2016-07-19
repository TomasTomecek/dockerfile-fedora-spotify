# Spotify in a docker container

Run your spotify client application in a docker container.


## Usage

This is not available on docker hub, you need to build it yourself:

```shell
$ git clone https://github.com/TomasTomecek/dockerfile-fedora-spotify.git
$ cd dockerfile-fedora-spotify
$ ./build.sh
```

Once the build is done, you can start a container with a `run` script:

```shell
$ ./run.sh
```
