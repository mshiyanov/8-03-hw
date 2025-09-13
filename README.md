# Домашнее задание к занятию "«GitLab»" - `Шиянов Михаил Николаевич`

---

### Задание 1

Развернуть GitLab локально с помощью Vagrant не получилось. Машина поднималась, но то GtiTlab не устанавливался, то порты не слуушались.
Пoшел другим путем, создал две машины в ya.cloud, на одной установлен GitLab, на другой runner. 

1. `Скриншоты ранера`
![Runner settings](https://github.com/mshiyanov/8-03-hw/blob/main/screenshots/01_runner.PNG)


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

