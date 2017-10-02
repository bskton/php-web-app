# Образ для запуска веб-приложения на PHP под Docker

Это пример простого Docker-образа с Nginx и PHP-FPM, который можно использоваться в качестве основы для создания веб-приложений на PHP.

## Использование
Склонировать репозиторий
```bash
git clone https://github.com/bskton/php-web-app.git
```

Перейти в дирекорию проекта
```bash
cd php-web-app
```

Собрать образ
```bash
sudo docker build -t php-web-app .
```

Запустить контейнер
```bash
sudo docker run --rm -it -p 8000:80 php-web-app
```

Открыть в браузере http://localhost:8000/, должен появиться вывод функции phpinfo().