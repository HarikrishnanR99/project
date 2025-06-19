FROM ubuntu:20.04
 
LABEL maintainer="2020wb86450@wilp.bits-pilani.ac.in"
 
# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    gnupg2 \
    build-essential \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    ruby-full
 
# Verify Ruby installation
RUN ruby -v
