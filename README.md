# "Домашнее задание к занятию 1 «Disaster recovery и Keepalived" - `Шиянов Михаил Николаевич`

---

### Задание 1

Схема PKT:

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/hsrp_advanced_shiyanov.pkt)


Конфигурация:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/PacketTracert.png)

---

### Задание 2

Вывод:

VIP адрес 10.143.98.100/24 присвоен мастер ноде:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/01_MV.PNG.jpg)

В статусе keepalived видно, что отработал скрипт, простой пайтон сервер не запущен:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/02_MV.PNG.jpg)


Адрес VIP пропал с мастер ноды:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/03_MV.PNG.jpg)

На Backup ноде появился VIP адрес 10.143.98.100/24

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/04_MV.PNG.jpg)

Файлы:

Скрипт:

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/script.sh)

keepalived.conf

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/keepalived.conf)


