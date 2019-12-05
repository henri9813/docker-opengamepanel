FROM debian:buster

RUN apt update \
    && apt install --yes \
        locales \
        libxml-parser-perl \
        libpath-class-perl \
        perl-modules \
        screen \
        rsync \
        sudo \
        e2fsprogs \
        unzip \
        subversion \
        pure-ftpd \
        libarchive-zip-perl \
        libc6 \
        libgcc1 \
        git \
        curl \
        libc6-i386 \
        lib32gcc1 \
        libhttp-daemon-perl \
        wget \
        procps \
        systemd-container \
        libarchive-extract-perl \
        libstdc++6 \
        lib32stdc++6 \
        libmariadb-dev \
        mariadb-client \
        lib32z1

RUN wget -N "https://github.com/OpenGamePanel/Easy-Installers/raw/master/Linux/Debian-Ubuntu/ogp-agent-latest.deb" -O "ogp-agent-latest.deb"
RUN dpkg -i "ogp-agent-latest.deb"

ENV DEBIAN_FRONTEND noninteractive

# Set LOCALE to UTF8
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales && \
    /usr/sbin/update-locale LANG=en_US.UTF-8
ENV LC_ALL en_US.UTF-8

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
