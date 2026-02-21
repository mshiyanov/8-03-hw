#  - Домашнее задание к занятию "Оркестрация группой Docker контейнеров на примере Docker Compose» `Шиянов Михаил Николаевич`

---


### Задание 1: Создайте Dockerfile и реализуйте в нем замену дефолтной индекс-страницы, соберите и отправьте созданный образ в свой dockerhub-репозитории c tag 1.0.0

#### Ссылка на репозиторий: https://hub.docker.com/repository/docker/shiyanovmn/custom-nginx/general



### Задание 2: Запустите ваш образ custom-nginx:1.0.0 командой docker run в соответвии с требованиями.

Запуск контейнра в фоне:

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Docker_run.JPG)

Переименование контейнера не удаляя

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Docker_rename.JPG)


Выполните команду м задания и убедитесь с помощью curl, что индекс-страница доступна.

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Chain_command.JPG)

### Задание 3: Подключиться к стандартному потоку ввода/вывода/ошибок контейнера "custom-nginx-t2".

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/01_third_task.jpg)

С помощью docker attach мы подключаемся к процессу PID 1. При нажатии Ctrl-C, терминал отправляет сигнал SIGINT  процессу PID 1, для
nginx это означает остановку master-процесса, а когда PID 1 завершился — Docker считает работу с контейнером законченным, и  переходит в Exited.

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/02_third_task.jpg)

Реддактируем файл:

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/03_third_task.jpg)

Выполнить nginx -s reload, затем curl внутри контейнера, выйти из контейнера, проверки на хосте и краткое объяснение проблемы

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/04_third_task.jpg)

Контейнер опубликован во вне как host 127.0.0.1:8080 → container 80/tcp.

Мы  поменяли nginx на listen 81, то есть внутри контейнера теперь сервис на 81, а docker-публикация всё ещё ведёт на 80.

Поэтому curl http://127.0.0.1:8080 не работает, docker пробрасывает на container:80, а там порт не прослушивается.


Удаляем контейнер:

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/05_third_task.jpg)




### Задание 4: Запуск контейнеров и подключение к ним.

Запуск контейнеров согласно заданию:

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/01_five_task.jpg)

Подключение к первому контейнеру с помощью docker exec и создайте текстовый файл любого содержания в /data.

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/02_five_task.jpg)


Добавляем ещё один файл в текущий каталог $(pwd) на хостовой машине.

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/03_five_task.jpg)

Подключение во второй контейнер и отобразите листинг и содержание файлов в /data контейнера.

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/04_five_task.jpg)


### Задание 5: Создание директории и файлов.

Создание файлов и запуск контейнера:

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/01_six.jpg)

Будет запущен compose.yaml, потому что docker compose по умолчанию ищет compose-файл в текущей директории и отдает предпочтение каноническому имени compose.yaml, 
но docker-compose.yaml поддерживается для совместимости.

Редактирование compose.yaml, чтобы запускались оба файла используя include

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/02_six.jpg)

Заливаем образ custom-nginx как custom-nginx:latest в локальный registry

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/03_six.jpg)

Задаем логин\пароль:

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/04_six.jpg)

Задеплоить в Portainer Stack с nginx из локального registry

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/05_six.jpg)

Проверка:

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/06_six.jpg)

Скриншот от поля "AppArmorProfile" до "Driver".

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/07_six.jpg)


Удаляем любой из манифестов компоуза(например compose.yaml

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/08_six.jpg)

Файл YAML

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/compose.yaml)

