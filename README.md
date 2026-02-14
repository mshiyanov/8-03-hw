#  - Домашнее задание к занятию «Защита сети» `Шиянов Михаил Николаевич`

---


### Задание 1: Проведите разведку системы и определите, какие сетевые службы запущены на защищаемой системе. 

#### Статус сервисов :

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/Status_suricata_fail2ban.jpg)

#### ACK cканирование nmap -sA :

1) При сканировании nmap -sA, что все 1000 стандартных портов ответили RST, то есть они не фильтруются файрволом.
2) В Suricata видим соответствующие записи обращений.
3) Fail2ban не реагирует на данный тип сканирования.

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/nmap%20-sA(kali).jpg)

#### Реакция suricata:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/nmap%20-sA(suricata).jpg)

#### TCP cканирование nmap -sT :

1) При сканировании nmap -sT, видим порты и службы 22 (SSH) и 80 (http)
2) В Suricata видим соответствующие записи обращений.
3) Fail2ban не реагирует на данный тип сканирования.

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/nmap%20-sT(kali).jpg)

#### Реакция suricata:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/nmap%20-sT(suricata).jpg)

#### SYN cканирование nmap -sS :

1) При сканировании nmap -sS, также видим порты и службы 22 (SSH) и 80 (http)
2) В Suricata видим соответствующие записи обращений.
3) Fail2ban не реагирует на данный тип сканирования.

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/nmap%20-sS(kali).jpg)

#### Реакция suricata:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/nmap%20-sS(suricata).jpg)

#### Cканирование c определенимем версии сервисов nmap -sS :

1) При сканировании nmap -sV, видим порты, службы, версию ПО и ОС. 
2) В Suricata видим соответствующие записи обращений.
3) Fail2ban не реагирует на данный тип сканирования.

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/nmap%20-sV(kali).jpg)

#### Реакция suricata:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/nmap%20-sV(suricata).jpg)


## Вывод - Fail2ban не реагирует на данные типы сканирования, т.к. он читает логи сервисов и ищет неудачные попытки залогиниться.


### Задание 2: Проведите атаку на подбор пароля для службы SSH:.

#### Брут на машину жертву:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/hydra.jpg)



#### Логи с машины жертвы Fail2ban:

![Pipeline settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/FFail2ban.jpg)


