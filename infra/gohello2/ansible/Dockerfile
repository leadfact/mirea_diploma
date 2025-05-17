FROM python:3.9-slim

RUN apt-get update && \
    apt-get install -y ansible && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /ansible

COPY playbook.yml .
COPY inventory .

ENTRYPOINT ["ansible-playbook", "-i", "inventory", "playbook.yml"] 