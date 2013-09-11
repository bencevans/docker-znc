# docker-znc

Builds and runs [ZNC](http://wiki.znc.in/ZNC) IRC Bouncer in a [Docker](http://docker.io) container.

## Clone, Build and Run

    git clone https://github.com/bencevans/docker-znc.git
    cd docker-znc
    docker build -t <yournamehere>/nginx .
    docker run <yournamehere>/nginx .

## Configure

1. Open http://localhost:6667 in your browser
2. Login with `admin` & `admin`
3. Change `admin` password
4. Carry on configuring

## Licence

MIT