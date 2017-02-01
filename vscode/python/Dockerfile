FROM python

MAINTAINER Kevin Price <kevinprice41@gmail.com>
RUN apt-get update -y \
    && apt-get install -y \
    curl \
    gcc \
    libx11-dev \
    fakeroot \
    rpm \
    git \
    python \
    nodejs \
    npm \
    build-essential \
    libgtk2.0-0 \
    libgconf-2-4 \
    libasound2 \
    libxtst6 \
    libnss3 \
    libxss1 \
    wget \
    libnotify4 \
    exuberant-ctags

RUN wget -O /root/vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868 \
    && dpkg -i /root/vscode.deb

RUN pip install jedi 


CMD code --user-data-dir=/user-data  --wait --verbose
