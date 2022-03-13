# Домашнее задание
## Физическая и логическая репликации

### Физическая репликация
- подымаем сервера postgres

```
docker run --rm --name postgres1 -e POSTGRES_PASSWORD=qwe -d -p 5432:5432 postgres
docker exec -it postgres1 bash
```

- инсталим nano для изменения конфигов

```
apt-get update
apt-get -y install nano
```

- для мастера изменяем конфиги в файлах

```
su postgres
 CREATE USER replicator WITH REPLICATION ENCRYPTED PASSWORD 'qwe';

nano /var/lib/postgresql/data/postgresql.conf
wal_level = replica

nano /var/lib/postgresql/data/pg_hba.conf
host    all             all             0.0.0.0/0            md5
host    replication     all             0.0.0.0/0            md5
```

- создаём базу

```
psql
\c replica
CREATE DATABASE replica;
CREATE TABLE test(i int);
INSERT INTO test values(10);

SELECT pg_create_physical_replication_slot('main');
SELECT pg_reload_conf();
```

- чекаем информацию о ip контейнера мастера

```
docker container inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' postgres1
'172.17.0.2'
```

- подымаем реплику

```
docker run --name postgres2 -e POSTGRES_PASSWORD=qwe -d -p 5433:5432 postgres
docker exec -it postgres2 bash
```

- настраиваем реплику

```
apt-get update
apt-get -y install nano
pg_createcluster -d /var/lib/postgresql/13/main2 13 main2
service postgresql stop
rm -rf /var/lib/postgresql/13/main2/*
su postgres
pg_basebackup -h 172.17.0.2 -p 5432 -U replicator -D /var/lib/postgresql/13/main2 -Fp -Xs -P -R -W

nano /var/lib/postgresql/13/main2/postgresql.conf
primary_slot_name = 'main'
hot_standby = on
recovery_min_apply_delay = 300s

pg_ctlcluster 13 main2 start
```

- чекаем все ли нормально с репликой

```
\c replica
SELECT * FROM test;

SELECT * FROM test;
 i
----
 10
(1 row)

select pg_is_in_recovery();
 pg_is_in_recovery
-------------------
 t
(1 row)
```


###Логическая репликация
- настройка мастера

```
nano /var/lib/postgresql/data/postgresql.conf
wal_level = logical

psql
SELECT pg_reload_conf();
```

- создаём публикацию на мастере

```
docker run --name postgres4 -e POSTGRES_PASSWORD=qwe -d -p 5435:5432 postgres
docker exec -it postgres4 bash

apt-get update
apt-get -y install nano

su postgres

nano /var/lib/postgresql/data/postgresql.conf
wal_level = logical

psql
CREATE USER replicator WITH REPLICATION ENCRYPTED PASSWORD 'qwe';

CREATE TABLE test_pub(i int);
INSERT INTO test_pub values(20);
CREATE PUBLICATION test_pub FOR TABLE test_pub;
```

- настройка репликации

```
docker run --name postgres3 -e POSTGRES_PASSWORD=qwe -d -p 5434:5432 postgres
docker exec -it postgres3 bash
apt-get update
apt-get -y install nano

su postgres

nano /var/lib/postgresql/data/postgresql.conf
wal_level = logical

psql
SELECT pg_reload_conf();

CREATE TABLE test_pub(i int);

CREATE SUBSCRIPTION test_sub11
CONNECTION 'host=172.17.0.5 port=5432 user=postgres password=qwe dbname=postgres' 
PUBLICATION test_pub;
```

- чекаем что все работает

```
postgres=# SELECT * FROM test_pub;
 20
```
