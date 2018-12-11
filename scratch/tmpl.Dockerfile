FROM scratch
COPY certs/ca-certificates.crt /etc/ssl/certs/
COPY traefik /
EXPOSE 8080
VOLUME ["/tmp"]
ENTRYPOINT ["/traefik"]
CMD ["--entrypoints=Name:http Address::8080"]

# Metadata
LABEL org.label-schema.vendor="Containous" \
      org.label-schema.url="https://traefik.io" \
      org.label-schema.name="Traefik" \
      org.label-schema.description="A modern reverse-proxy" \
      org.label-schema.version="$VERSION" \
      org.label-schema.docker.schema-version="1.0"
