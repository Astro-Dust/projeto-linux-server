#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd diana -m -s /bin/bash -p $(openssl passwd -crypt 22323) -G GRP_ADM
useradd caio -m -s /bin/bash -p $(openssl passwd -crypt 3112) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 9982) -G GRP_ADM

useradd dina -m -s /bin/bash -p $(openssl passwd -crypt 847) -G GRP_VEN
useradd rafa -m -s /bin/bash -p $(openssl passwd -crypt 266) -G GRP_VEN
useradd dani -m -s /bin/bash -p $(openssl passwd -crypt 726) -G GRP_VEN

useradd ivo -m -s /bin/bash -p $(openssl passwd -crypt 71) -G GRP_SEC
useradd yuri -m -s /bin/bash -p $(openssl passwd -crypt 009) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 007) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."

