# Домашнее задание к занятию "«GitLab»" - `Шиянов Михаил Николаевич`

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

 

1. `Скриншот инсталлляции`
![Runner settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Install.PNG)


---

### Задание 2

`Запушил репозиторий на GitLab, изменив origin. Создал .gitlab-ci.yml`

`Код  gitlab-ci.yml`

```yaml
stages:
  - test
  - build

test:
  stage: test
  image: golang:1.17
  script: 
    - go test .

build:
  stage: build
  image: docker:latest
  script:
    - docker build .
```

1. `Скриншоты pipeline`

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/01_PipeLines.PNG)

