FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y \
    nginx \
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
COPY nginx.conf /etc/nginx/nginx.conf

RUN chmod +x /app/new-fighting-game.x86_64

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 10000

ENTRYPOINT ["/start.sh"]