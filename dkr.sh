#!/bin/bash

export mydb_cname=mydb
#export nginx_cname=myng
#export dru8fpm_cname=mydru8
docker run --name mywp1 --link mysql:mysql -d wordpress:4-php5.6-fpm
