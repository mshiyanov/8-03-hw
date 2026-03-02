#  - Домашнее задание к занятию "Домашнее задание к занятию 5. «Практическое применение Docker» `Шиянов Михаил Николаевич`

---


### Задание 0 и 1:

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Version.jpg)

Содержимое проекта и Dockerfile.python

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/FileList%2BDoxkerFile.jpg)

Сожержание файла .gitignore

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/dockerignore.jpg)

Процесс docker build

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Deploy.jpg)

docker run

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/DockerRUN.jpg)

Проверка:

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Check.jpg)

### Задание 2: Создайте в yandex cloud container registry, загрузите образ и просканируйте

Отчет:

![Report](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/scan-report.json)


### Задание 3:

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/DatabaseIP.jpg)


### Задание 4:

![Docker_run](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/DatabaseIP_4.jpg)

Ссылка на FORK

![https://github.com/mshiyanov/shvirtd-example-python.git](https://github.com/mshiyanov/shvirtd-example-python.git)

### Задание 6:

Скачиваем образ docker pull hashicorp/terraform:latest

![https://github.com/mshiyanov/shvirtd-example-python.git](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/hashicorp.jpg)

Установка DIVE

![https://github.com/mshiyanov/shvirtd-example-python.git](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/dive.jpg)

Находим /bin/terraform исаользуя dive hashicorp/terraform:latest

![https://github.com/mshiyanov/shvirtd-example-python.git](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/bin-terraform.jpg)

Сохраняем образ через docker save

![https://github.com/mshiyanov/shvirtd-example-python.git](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Terraformtarr.jpg)

Находим blob, где есть bin/terraform и извлекаем бинарник из архива

![https://github.com/mshiyanov/shvirtd-example-python.git](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/mkdirr.jpg)

![https://github.com/mshiyanov/shvirtd-example-python.git](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/binary.jpg)

![https://github.com/mshiyanov/shvirtd-example-python.git](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Extract.jpg)

Kопируем terraform в систему и проверим версию

![https://github.com/mshiyanov/shvirtd-example-python.git](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/terversion.jpg)


### Задание 6.1:

Создаем контейнер

![https://github.com/mshiyanov/shvirtd-example-python.git](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/6.1.1.jpg)

Копируем файл из контейнера

![https://github.com/mshiyanov/shvirtd-example-python.git](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/6.1.2.jpg)

Файл:

![https://github.com/mshiyanov/shvirtd-example-python.git](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/6.1.3.jpg)
