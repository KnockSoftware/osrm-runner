#!/bin/bash

# TODO: add authorization for s3 urls
# @see http://stackoverflow.com/questions/1306550/calculating-a-sha-hash-with-a-string-secret-key-in-python
# @see http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-auth-using-authorization-header.html

if [ ! -e /data/data.osrm.nodes ]; then
  curl $OSRM_TGZ_URL | pigz -d | tar xv -C /data/
fi

exec ./osrm-routed /data/data.osrm
