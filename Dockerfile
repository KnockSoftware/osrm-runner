FROM ezheidtmann/osrm

RUN DEBIAN_FRONTEND=noninteractive apt-get install -yy pigz

ENV OSRM_TGZ_URL https://s3-us-west-2.amazonaws.com/osrm-prepared-data/ri.osrm.tar.gz

ADD run.sh run.sh
CMD ./run.sh
