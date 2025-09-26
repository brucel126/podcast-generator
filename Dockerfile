FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.12 \
    python3-pip \
    python3.12-venv \
    git

RUN python3.12 -m venv /venv
ENV PATH="/venv/bin:$PATH"

RUN pip install PyYAML
