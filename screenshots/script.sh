#!/bin/bash

# Проверяем доступность двух Python веб-серверов
# Первый сервер слушает порт 8888, второй — 9999

HOST="127.0.0.1"

# Пути к директориям, где лежат index.html
WEBROOT1="/home/shiyanovmn/www"

PORT1=8888

check_port() {
    local port=$1
    nc -z $HOST $port >/dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "Порт $port недоступен"
        return 1
    fi
    return 0
}

check_index() {
    local path=$1
    if [ ! -f "$path/index.html" ]; then
        echo "Файл $path/index.html отсутствует"
        return 1
    fi
    return 0
}

# Проверяем первый веб-сервер
check_port $PORT1 || exit 1
check_index $WEBROOT1 || exit 2


# Всё в порядке
exit 0
