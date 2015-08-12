#!/bin/bash

if [ ! -e /data/data.osrm.nodes ]; then
  curl $OSRM_TGZ_URL | pigz -d | tar xv -C /data/
fi

exec ./osrm-routed /data/data.osrm
