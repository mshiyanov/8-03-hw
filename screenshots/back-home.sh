#!/bin/bash

# Папки
SRC="/home/shiyanovmn/"
DEST="/tmp/backup/"

# Логирование (в syslog)
LOGGER_TAG="rsync-backup"

# Выполнение rsync
rsync -av --delete --exclude='.*' --checksum --itemize-changes "$SRC" "$DEST"
STATUS=$?

# Cстатус выполнения
if [ $STATUS -eq 0 ]; then
    logger -t "$LOGGER_TAG" "Резервное копирование успешно завершено"
else
    logger -t "$LOGGER_TAG" "Ошибка при резервном копировании (код $STATUS)"
fi

exit $STATUS
