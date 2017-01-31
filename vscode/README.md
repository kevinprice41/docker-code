# docker-code
Development Environments

Install XQuartz 

```
brew cask install xquartz
```

Open XQuartz and all connections from network clients

```
open -a XQuartz
```

Allow connections from your local machine 

```
ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip
```

Build
```
docker build -t prizyp/vscode .
```

Run
```
docker run -d -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix prizyp/vscode
```
