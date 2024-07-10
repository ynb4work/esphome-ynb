FROM esphome/esphome:latest

# Копируем конфигурационный файл в рабочую директорию
COPY config.yaml /config.yaml

# Запускаем ESPHome
CMD ["esphome", "dashboard", "/config.yaml"]
