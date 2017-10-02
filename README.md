# Образ для запуска веб-приложения на PHP под Docker

Это пример простого Docker-образа с Nginx и PHP-FPM, который можно использоваться в качестве основы для создания веб-приложений на PHP.

## Использование
Склонировать репозиторий
```bash
git clone https://github.com/bskton/nginx-php-fpm.git
```

Перейти в дирекорию проекта
```bash
cd nginx-php-fpm
```

Собрать образ
```bash
sudo docker build -t my-nginx-php-fpm-image .
```

Запустить контейнер
```bash
sudo docker run --rm -it -p 8000:80 --name nginx-php-fpm-app my-nginx-php-fpm-image
```

Открыть в браузере http://localhost:8000/, должен появиться вывод функции phpinfo().