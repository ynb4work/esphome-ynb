# Dockerfile для проекта ESPHome на базе Python Slim

# Используем базовый образ Python 3.8 Slim
FROM python:3.8-slim

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файл requirements.txt из текущего каталога внутрь контейнера
COPY requirements.txt ./

# Устанавливаем необходимые пакеты Python
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 6053  # Используйте номер порта, указанный в вашем config.yaml


# Дополнительные инструкции для сборки вашего проекта ESPHome
# COPY config.yaml ./  # Пример, как можно скопировать конфигурационный файл
# ...

# Команда для запуска вашего проекта, если нужно
# CMD ["python", "app.py"]
