FROM gcc:latest
RUN apt-get update && apt-get install -y inotify-tools
WORKDIR /app/src
COPY ./src /app/src