FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y \
    libfontconfig1 \
    libxcursor1 \
    libxinerama1 \
    libxrandr2 \
    libxi6 \
    libglu1-mesa \
    libasound2t64 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY server/ /app/

RUN chmod +x /app/new-fighting-game.x86_64

EXPOSE 8564/udp
EXPOSE 8564/tcp

ENTRYPOINT ["/app/new-fighting-game.x86_64"]
CMD ["--headless", "--server", "--verbose"]