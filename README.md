# Домашнее задание к занятию "«Система мониторинга Zabbix»" - `Шиянов Михаил Николаевич`

---

### Задание 1

`Установил последнюю версию Zabbix 7.4`

`Использованные команды:`

1. `apt update`
2. `sudo apt install postgresql`
3. `wget https://repo.zabbix.com/zabbix/7.4/release/debian/pool/main/z/zabbix-release/zabbix-release_latest_7.4+debian12_all.deb`
4. `dpkg -i zabbix-release_latest_7.4+debian12_all.deb`
5. `apt update`
6. `apt install zabbix-server-pgsql zabbix-frontend-php php8.2-pgsql zabbix-apache-conf zabbix-sql-scripts`
7. `su - postgres -c 'psql --command "CREATE USER zabbix WITH PASSWORD'\'123456789\'';"'`
8. `su - postgres -c 'psql --command "CREATE DATABASE zabbix OWNER zabbix;"'`
9. `zcat /usr/share/zabbix/sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix`
10. `DBPassword=password`
11. `systemctl restart zabbix-server apache2`
12. `systemctl enable zabbix-server apache2`
 

`Скриншот инсталлляции`
![Runner settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Install.PNG)

`Скриншот окончания инсталлляции`
![Runner settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/finish.PNG)

`Скриншот дашборда`
![Runner settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Dashboard.PNG)



---

### Задание 2

`Установил агентов заббикс на две VM`


1. `Два агента подключены к серверу`

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Agents.PNG)

2. `Логи агентов подключенныых к серверу`

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Runner.PNG)

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Zagent.PNG)

3. `скриншот раздела Monitoring > Latest data`

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/LastData.PNG)

`Текст использованных команд в GitHub`

```
git add screenshots                            #добавил новые скриншоты
git commit -m "Добавление скриншотов"          #закоммитил
git push origin main                           #запушил

```

```
git add README.md
git commit -m "Домашнее задание по мониторингу zabbix"
git push origin main

```

`Команды установки агента Zabbix`

1. `wget https://repo.zabbix.com/zabbix/7.4/release/debian/pool/main/z/zabbix-release/zabbix-release_latest_7.4+debian12_all.deb`
2. `dpkg -i zabbix-release_latest_7.4+debian12_all.deb`
3. `apt update`
4. `apt install zabbix-agent`
5. `systemctl restart zabbix-agent`
6. `systemctl enable zabbix-agent`
