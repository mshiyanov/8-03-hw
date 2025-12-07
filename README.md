#  - Домашнее задание к занятию «Домашнее задание к занятию «Репликация и масштабирование. Часть 1» `Шиянов Михаил Николаевич`

---

### Задание 1:


### Задание 2:


Содержмое файла docker-compose.yml:


![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/replication/compose.JPG)


Вывод конфигрураций файлов вывод конфигов MySQL - master/conf.cnf\slave/conf.cnf:

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/replication/master_conf.JPG)

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/replication/slave_conf.JPG)

Состояние контейнеров:

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/replication/docker_ps.JPG)

Настройка пользователя репликации:

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/replication/user_repl.JPG)

Назначены права репликации:

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/replication/grant_replication_slave.JPG)

Статус мастера:

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/replication/master_status.JPG)

Статус слэйва:

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/replication/show_slave_status.JPG)

Тест синхронизации данных данныхЖ

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/replication/testmicdb.JPG)

На слэйве проверяем, что данные синхронизовались:

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/replication/get_testmicdb.JPG)
