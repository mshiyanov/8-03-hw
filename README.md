#  - Домашнее задание к занятию «Домашнее задание к занятию «Репликация и масштабирование. Часть 1» `Шиянов Михаил Николаевич`

---

### Задание 1:

#Master-Slave

Master-Slave репликация, это когда есть один мастер и один или несколько слейвов.

Мастер — главный сервер, в него идут все записи (INSERT, UPDATE, DELETE).

Слейв — только читает данные с мастера. Он копирует все изменения мастера.

Преимущества:

1. Можно делать резервное копирование на слейве.

2. Слейвы разгружают мастер — читающие запросы можно отправлять на них.

Недостаток:

1. Записи можно делать только на мастере.
2. Если мастер упал — нужно дополнительная настройка, чтобы один из слейвов стал новым мастером.


#Master-Master

Master-Master репликация, это  два мастера, каждый может читать и писать. Каждый мастер реплицирует изменения на другого мастера.

Преимущества:

1. Можно писать на любого из мастеров, нагрузка распределяется.

2. Если один мастер упал — другой продолжает работать.

Недостатки:

1. Нужно быть аккуратным с конфликтами, если один и тот же ряд изменяется на обоих мастерах одновременно.

2. Настройка сложнее, чем master-slave.


Различия:

| Пункт                  | Master-Slave                          | Master-Master                        |
|------------------------|---------------------------------------|--------------------------------------|
| Кто пишет данные       | Только мастер                         | Любой из мастеров                    |
| Кто читает данные      | Слейвы (и мастер, если нужно)         | Любой мастер                         |
| Направление репликации | Одностороннее (мастер → слейв)        | Двустороннее (мастер ↔ мастер)       |
| Сложность настройки    | Простая                               | Сложная                              |



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

Тест синхронизации данных данных:

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/replication/testmicdb.JPG)

На слэйве проверяем, что данные синхронизовались:

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/replication/get_testmicdb.JPG)
