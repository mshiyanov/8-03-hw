#  - Домашнее задание к занятию «Уязвимости и атаки на информационные системы» `Шиянов Михаил Николаевич`

---


### Задание 1: Просканируйте эту виртуальную машину metasploit, используя nmap. Попробуйте найти уязвимости, которым подвержена эта виртуальная машина. 


# Название сетевой службы:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/01-services.jpg)

# Уязвимости:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/02-services.jpg)

# Какие уязвимости были обнаружены:

1. Порт 21 vsftpd 2.3.4

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/vsftpd%202.3.4.jpg)

2. OpenSSH 4.7p1 (Username Enumeration)

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/OpenSSH%207.2p2%20-%20Username%20Enumeration.jpg)

3. Apache httpd 2.2.8

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/ARP.jpg)


### Задание 2: Проведите сканирование Metasploitable в режимах SYN, FIN, Xmas, UDP.

#SYN сканирование:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Syn%20Scan.jpg)
Посылаем флаг SYN, если в ответ ничего не приходит, знасит порт открыт, если приходит RST, ACK - порт закрыт.


#FIN сканирование:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/ScanFIN.jpg)
Посылаем флаг FIN, если в ответ ничего не приходит, знасит порт открыт, если приходит RST, ACK - порт закрыт.

#XMAS сканирование:
![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Xmas.jpg)
Посылаем флаги FIN, PSH, URG, если получаем RST - порт закрыт.

#UDP сканирование:
![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/UDP.jpg)
При UDP сканировании порт 53 ответил корректным ответом DNS, значит он открыт. Порт 161 вернул Destination Unreachable (Port unreachable).

## Главное отличие сканирования с точки зрения сетвого трафика, это какие пакеты отправляются и как отвечает сервер. (описание ответов выше)
