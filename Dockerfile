FROM ubuntu:latest
LABEL authors="izzaz"

ENTRYPOINT ["top", "-b"]