# Basis-Image
FROM debian:latest

# Aktualisierung der Paketliste und Installation von notwendigen Tools
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y bash jq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY writebackend.sh /app/start.sh
RUN chmod +x /app/start.sh
CMD [ "/app/start.sh" ]
