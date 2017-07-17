#!/bin/bash

# Filter output based on these conditions:
# - exited=<int> an exit code of <int>
# - label=<key> or label=<key>=<value>
# - status=(created|restarting|running|paused|exited)
# - name=<string> a container's name
# - id=<ID> a container's ID
# - before=(<container-name>|<container-id>)
# - since=(<container-name>|<container-id>)
# - ancestor=(<image-name>[:tag]|<image-id>|<image@digest>) - containers created from an image or a descendant.
# - volume=(<volume-name>|<mount-point>)

toberms=$(docker ps -a -q -f status=running)
docker stop $toberms

