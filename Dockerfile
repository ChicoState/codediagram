FROM ubuntu:22.04
LABEL title="Code Diagram"
LABEL version=0.1
ENV WORKDIR=/usr/src
VOLUME ["/in","/out"]
WORKDIR /usr/src

# Install dependencies
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    curl \
    make

# Install D2
RUN curl -fsSL https://d2lang.com/install.sh | sh -s --

# Run program
CMD ["sh", "-c", "d2 /in/*.d2"]