# https://hub.docker.com/r/hashicorp/terraform/~/dockerfile/

FROM ubuntu:latest

ENV TERRAFORM_VERSION=0.7.3
ENV TERRAFORM_SHA256SUM=4e985f222ec99616e8c730d737c9b400f9d73bf0c436661ec888b2406d3a6f39

RUN apt-get update && apt-get upgrade && \
	apt-get install -qy git curl python-pip jq unzip groff-base && \
	pip install --upgrade pip && \
	pip install awscli requests && \
	curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
	unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip