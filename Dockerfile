# Використання базового образу Python
FROM python:3.12.2-slim

# Установка рабочої директорії в контейнері
WORKDIR /app

# Копіювання файлів в контейнер
COPY . /app

# Установка залежностей
RUN pip install --no-cache-dir flask

# Відкриття порту 5000
EXPOSE 5000

# Команда для запуску додатку
CMD ["python", "main.py"]
