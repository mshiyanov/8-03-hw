#  - Домашнее задание к занятию «Работа с данными (DDL/DML)» `Шиянов Михаил Николаевич`

---

### Задание 1:

Запрос на получение списка пользователей в базе данных:


![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/user_list.jpg)

Запрос на получение списка прав для пользователя sys_temp:

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Previlidges.jpg)

Подключение к базе данных от имени sys_temp:

Для переподключения пришлось использовать следующие команды, т.к. модуль mysql_native_password отсутствует в версии mySQL 9.5:

"ALTER USER 'sys_temp'@'localhost'
IDENTIFIED WITH caching_sha2_password BY '4636';"

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Connect_secsusiful.jpg)

Получение всех таблиц базы данных.:

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/rise_DB.jpg)


### Задание 2

![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Tables.xlsx)








