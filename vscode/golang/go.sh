#!/bin/bash

ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')

xhost + $ip

docker run -it -d \
        -v /Users/kevinprice/ide/vscode/go/user-data:/user-data \
        -v $HOME:/root \
        -v /Users/kevinprice/Development/go:/workspace \
        --net=host \
        --privileged \
        -e DISPLAY=$ip:0 -v /tmp/.X11-unix:/tmp/.X11-unix \
        prizyp/golang
