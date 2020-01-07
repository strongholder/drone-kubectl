FROM bitnami/kubectl:latest

COPY init-kubectl kubectl /opt/kubectl/bin/

USER root

ENV PATH="/opt/kubectl/bin:$PATH"

ENTRYPOINT ["kubectl"]

CMD ["--help"]
