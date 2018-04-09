# gRPC PHP client builder docker image

Docker image for generating PHP gRPC client

## General usage

1. Create a work directory (`$WORK_DIR`)

1. Put all the `.proto` files into the directory

1. Invoke the builder
    ```shell
    docker run -v $WORK_DIR:/work 9gag/grpc-php-builder
    ```

1. PHP clients will be generated at `$WORK_DIR/out`

## Alternative usage

Take a look at the `entrypoint.sh` and adapt it to your needs. This image is based on `grpc/cxx` and only adds the PHP gRPC plugin which is located at `/var/local/git/grpc/bins/opt/grpc_php_plugin`.

## Reference

- https://grpc.io/docs/tutorials/basic/php.html
