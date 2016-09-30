# https://hub.docker.com/r/hashicorp/terraform/~/dockerfile/

FROM ubuntu:latest

ENV TERRAFORM_VERSION=0.7.4
ENV TERRAFORM_SHA256SUM=8950ab77430d0ec04dc315f0d2d0433421221357b112d44aa33ed53cbf5838f6

RUN apt-get update -y && apt-get upgrade -y && \
	apt-get install -qy git curl python-pip jq unzip zip groff-base && \
	pip install --upgrade pip && \
	pip install awscli requests && \
	curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
	unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip