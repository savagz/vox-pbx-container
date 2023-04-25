FROM debian:stable-slim

# Actualizar e Instalar Dependencias
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    build-essential \
    openssl \
    libncurses5-dev \
    libssl-dev \
    libxml2-dev \
    libsqlite3-dev \
    uuid-dev \
    libedit-dev \
    unixodbc unixodbc-dev \
    ca-certificates \
    git \
    odbcinst odbc-postgresql \
    && rm -rf /var/lib/apt/lists/*

# Descargar Asterisk 20
WORKDIR /usr/src
RUN wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-20-current.tar.gz \
    && tar xzf asterisk-20-current.tar.gz \
    && rm asterisk-20-current.tar.gz \
    && cd asterisk-20* \
    && pwd \
    && ./configure --with-jansson-bundled --with-pjproject-bundled \
    && make menuselect.makeopts \
    && menuselect/menuselect \
       --disable app_macro \
       --disable app_meetme \
    && make \
    && make install \
    && make samples \
    && cd .. \
    rm -rf asterisk*

# Clona el repositorio
RUN git clone https://github.com/savagz/voxpbx-asterisk-conf.git /usr/src/voxpbx

# Cambia el directorio de trabajo
WORKDIR /usr/src/

# Copy Installer
COPY Install.sh .

# Install PBX Files
RUN sh Install.sh

# Puertos
EXPOSE 5060/udp 5060/tcp 8088/tcp 5038/tcp 10000-11000/udp

# Volume
# VOLUME /var/spool/asterisk/monitor

# Ejecutar Asterisk
CMD ["asterisk", "-cvvv"]
