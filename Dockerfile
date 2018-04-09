FROM grpc/cxx:1.10

RUN cd /var/local/git/grpc && make grpc_php_plugin

ADD entrypoint.sh /

ENTRYPOINT /entrypoint.sh
