FROM alpine:latest
MAINTAINER "Ezequiel Reyna <ezequiel.reyna@gmail.com>"

ENV TERRAFORM_VERSION=0.12.23
ENV VAULT_VERSION=1.3.4

RUN apk add --update git bash curl wget python py-setuptools py-pip ca-certificates groff less && pip --no-cache-dir install --upgrade awscli pip botocore pre-commit && rm -rf /var/cache/apk/*

ADD https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip ./

ADD https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip ./

RUN unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin
RUN rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN unzip vault_${VAULT_VERSION}_linux_amd64.zip -d /bin
RUN rm -f vault_${VAULT_VERSION}_linux_amd64.zip
