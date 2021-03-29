## Fume AWS Lambda Images

This repository contains the steps and code needed to build a container image with the most current version of node

> Current support is v15.x

### Building an image

* First, clone this repository
```sh
git clone git@github.com:fumeapp/lambda-node.git
```

* Build and run the Lambda Nodejs v14 image source code [here](https://github.com/aws/aws-lambda-base-images/tree/nodejs14.x)

```shell
./build-v14.sh
```

* In another terminal (while the v14 container is running) run `docker ps` and copy the CONTAINER ID

* Run the following command using the copied ID
```shell
docker cp {CONTAINER_ID}:/var/runtime .
```

* Modify `runtime/bootstrap` and change paths of `/var/lang/bin/node` to `/usr/bin/node`

* Modify `deploy.sh` to match your own AWS account and ECR and then deploy!
