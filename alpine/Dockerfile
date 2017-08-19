FROM alpine:3.6

MAINTAINER Arek Czogala <aczogala@gmail.com>

ENV ECS_DEPLOY_VERSION=3.2
ENV AWS_CLI_VERSION=1.11.136

RUN apk --no-cache update && \
    apk add python py-pip curl sudo jq tar groff less bash

RUN pip install --upgrade pip && \
    pip install awscli==$AWS_CLI_VERSION

RUN curl -sL https://github.com/silinternational/ecs-deploy/archive/$ECS_DEPLOY_VERSION.tar.gz | tar -xzv && \
    ln -s /ecs-deploy-$ECS_DEPLOY_VERSION/ecs-deploy /usr/bin/ecs-deploy
