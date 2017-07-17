#!/bin/bash
echo $@
ng_path=$HOME/workspaces/nginx-docker
docker run -it --rm  --name myngx \
	-p 8080:80 -p 443:443 \
 -v $(pwd):/mnt/static  -w /mnt/static \
 -v $ng_path/ng_https.conf:/etc/nginx/conf.d/default.conf \
 -v $ng_path/ng_pub.crt:/etc/nginx/ssl/ng_pub.crt \
 -v $ng_path/ng_priv.key:/etc/nginx/ssl/ng_priv.key \
	 nginx:1.10 /bin/bash

