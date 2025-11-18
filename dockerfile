# Самый лёгкий и быстрый образ с Xray-core (2025 год)
FROM ghcr.io/xtls/xray-core:latest

# Копируем конфиг (создадим его ниже)
COPY config.json /etc/xray/config.json

# Порт для SOCKS5
EXPOSE 1080

CMD ["xray", "run", "-c", "/etc/xray/config.json"]
