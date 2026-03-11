# This is the base image to use
FROM ubuntu:latest

# Upgrade apt
RUN apt update && apt upgrade -y
RUN apt install -y python3-full python3-pip python-is-python3
