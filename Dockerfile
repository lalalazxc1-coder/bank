# Используем легкий образ Nginx для раздачи статики
FROM nginx:alpine

# Копируем файлы проекта в стандартную директорию Nginx
COPY . /usr/share/nginx/html

# Экспонируем 80 порт
EXPOSE 80

# Nginx запускается автоматически по умолчанию
CMD ["nginx", "-g", "daemon off;"]
