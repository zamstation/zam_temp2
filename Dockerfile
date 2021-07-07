# Fetch base images
ARG version
FROM alpine:latest

# Set environment variables
ENV OS_VERSION=latest

# Add a user
RUN adduser dev -D --shell /bin/sh

# Environment variables
ENV USER="dev"
ENV HOME="/home/dev"
ENV LOCAL="/usr/local"
ENV BIN="${LOCAL}/bin"
ENV LIB="${LOCAL}/lib"
ENV TMP="/tmp"
ENV WS="${HOME}/workspace"

# Create basic directories
USER dev
RUN mkdir -p ${WS}
RUN cd ${WS}
COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
