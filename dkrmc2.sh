#!/bin/bash
# rm the current running container
# how to prompt before really "Go"
runs=$(docker ps -q|awk '{print $1}')
echo $runs
docker stop $runs
docker rm $runs

