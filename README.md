#  - Домашнее задание к занятию «Репликация и масштабирование. Часть 2» `Шиянов Михаил Николаевич`

---

### Задание 1:

Таблицы содержат:

Пользователи (users): id, name, email, region, registration date

Книги (books): id, title, author, genre, publisher

Магазины (stores): id, name, location, type, capacity

## Вертикальный шаринг

Server_01 (Пользовательские данные):
- Таблица: users (операции с профилями, аутентификация)

Server_02 (Каталог товаров):
- Таблица: books (поиск, фильтры)

Server_03 (Операционные данные):
- Таблица: stores (управление магазинами, логистика)

## Горизонтальный шаринг

Таблица users:

Ключ шаринга: region (географический регион)

Количество шардов: 4 

Распределение: 

Север, Юг, Запад, Восток


Таблица books:

Ключ шаринга: genre (жанр книги)

Количество шардов: 3

Распределение:

Шард 1: Художественная литература

Шард 2: Научная/образовательная

Шард 3: Другое (справочники, документация)


Таблица stores:

Ключ шаринга: location (город)

Количество шардов: 3

Москва

Санкт-Петербург

Регионы 


## блок схема


    title Схема шардирования

    API_GATEWAY(id1)["API GATEWAY"]

    id1-->USER_SERVICE(id2)["User Service"]
    id1-->CATALOG_SERVICE(id3)["CatalogService"]
    id1-->STORE_SERVICE(id4)["Store Service"]

    id2-->USERS_SHARD1(id5)["UsersShard1"]
    id2-->USERS_SHARD2(id6)["UsersShard2"]
    id2-->USERS_SHARD3(id7)["UsersShard3"]

    id3-->BOOKS_SHARD1(id8)["BooksShard1"]
    id3-->BOOKS_SHARD2(id9)["BooksShard2"]
    id3-->BOOKS_SHARD3(id10)["BooksShard3"]

    id4-->STORES_SHARD1(id11)["StoresShard1"]
    id4-->STORES_SHARD2(id12)["StoresShard2"]
    id4-->STORES_SHARD3(id13)["StoresShard3"]








![Download](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/replication/compose.JPG)
