FROM --platform=$BUILDPLATFORM tinygo/tinygo:0.33.0 AS build
ARG TARGETOS
ARG TARGETARCH
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 GOOS=${TARGETOS} GOARCH=${TARGETARCH} GOFLAGS=-buildvcs=false tinygo build -o locusts ./include

FROM scratch
USER nobody
LABEL org.opencontainers.image.licenses=0BSD
LABEL org.opencontainers.image.source=https://github.com/locusts-r-us/locusts
LABEL org.opencontainers.image.title=Locusts
LABEL org.opencontainers.image.description="A container that contains locusts"
HEALTHCHECK NONE
COPY --from=build /app/locusts /
ENTRYPOINT ["/locusts"]
