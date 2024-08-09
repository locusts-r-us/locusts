FROM scratch
LABEL org.opencontainers.image.licenses=0BSD
LABEL org.opencontainers.image.source=https://github.com/locusts-r-us/locusts
LABEL org.opencontainers.image.title=Locusts
LABEL org.opencontainers.image.description="A container that contains locusts"
HEALTHCHECK NONE
COPY locusts /
ENTRYPOINT ["/locusts"]