#!/bin/bash
echo $@
docker run --rm  --name mynodejs -v $(pwd):/mnt/test  -w /mnt/test \
	 node:4.8 node $@

