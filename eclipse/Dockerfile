FROM java:8-jdk

USER root 

MAINTAINER Kevin Price <kevinprice41@gmail.com>
RUN apt-get update -y \
    && apt-get install -y \
    curl \
    gcc \
    libx11-dev \
    fakeroot \
    rpm \
    git \
    build-essential \
    libgtk2.0-0 \
    libgconf-2-4 \
    libasound2 \
    libxtst6 \
    libnss3 \
    libxss1 \
    wget \
    libnotify4 

RUN wget -O /root/eclipse.tar.gz http://ftp.osuosl.org/pub/eclipse/technology/epp/downloads/release/neon/2/eclipse-jee-neon-2-linux-gtk-x86_64.tar.gz && tar -xvzf /root/eclipse.tar.gz -C /root/ && chmod +x /root/eclipse/eclipse

CMD /root/eclipse/eclipse
