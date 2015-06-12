FROM ubuntu
MAINTAINER Greg Fausak <lgfausak@gmail.com>
RUN apt-get update \
 && apt-get install -y wget \
 && apt-get install -y curl \
 && apt-get install -y python \
 && mkdir /tmp/md \
 && curl -s -L  https://github.com/coreos/etcd/releases/download/v0.4.9/etcd-v0.4.9-linux-amd64.tar.gz -o /tmp/b.tar.gz \
 &&  (cd /tmp/md ;  tar xzf ../b.tar.gz ;  cp */etcdctl /usr/local/bin ;  cd /tmp ;  rm -rf md b.tar.gz)
ENTRYPOINT ["/bin/bash"]

