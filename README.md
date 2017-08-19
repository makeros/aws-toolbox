# docker-aws-toolbox

[![Docker Automated buil](https://img.shields.io/docker/automated/makeros/aws-toolbox.svg)]()
[![Docker Build Statu](https://img.shields.io/docker/build/makeros/aws-toolbox.svg)]()

---


## Includes:

* [aws-cli](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html) - version 1.11.129
* [ecs-deploy](https://github.com/silinternational/ecs-deploy) - version 3.2

# Getting started

Pull the alpine image: `docker pull makeros/aws-toolbox:alpine`

Examples:

```
docker run --rm  makeros/aws-toolbox:alpine aws --version
```

```
docker run --rm -e AWS_ACCESS_KEY_ID= -e AWS_SECRET_ACCESS_KEY= -e AWS_DEFAULT_REGION= makeros/aws-toolbox:alpine aws --version
```

```
docker run --rm -it makeros/aws-toolbox:alpine ecs-deploy
```
