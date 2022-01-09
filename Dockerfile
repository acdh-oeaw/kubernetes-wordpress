FROM docker.io/bitnami/wordpress:latest
LABEL maintainer "Norbert Czirjak <norbert.czirjak@oeaw.ac.at>"
USER root

ENV HOME="/" \
    OS_ARCH="amd64" \
    OS_FLAVOUR="debian-10" \
    OS_NAME="linux"

RUN apt-get update -y
RUN install_packages unzip git

COPY plugins /

EXPOSE 8080 8443

USER 1001
ENTRYPOINT [ "/opt/bitnami/scripts/wordpress/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/apache/run.sh"]
