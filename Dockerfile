# Используем официальное Python окружение в качестве базового образа
FROM python:3.8-slim

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Устанавливаем необходимые пакеты из requirements.txt
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Устанавливаем ESPHome
RUN pip install esphome

# Копируем остальные файлы вашего приложения
COPY . .

# Запускаем ваше приложение
CMD ["python", "./your_script.py"]
