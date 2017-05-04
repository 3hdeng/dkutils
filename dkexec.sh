#!/bin/bash
myuser=admin0
mypass=pass0
cName="mypma"
cmd="/bin/bash"
if [[ $# -eq 1 ]]; then
    cName=$1
fi

if [[ $# -eq 2 ]]; then
    cName=$1
    cmd=$2
fi


echo $cName
~/docker exec -it $cName $cmd

