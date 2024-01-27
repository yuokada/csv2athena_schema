FROM node:20
# Install dependencies
RUN npm install -g @biomejs/biome@latest
RUN wget -q -O /usr/local/bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64 && \
    chmod +x /usr/local/bin/hadolint

# Set up the working directory
WORKDIR /workspace
