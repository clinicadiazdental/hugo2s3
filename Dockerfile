FROM pahud/awscli-v2:node-lts

RUN yum update -y && \
    yum install -y curl jq \
    yum install epel-release \
    yum update \
    yum install golang

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
