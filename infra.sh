#!/bin/bash

echo "....CRIANDO USUÁRIOS...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "....CRIANDO GRUPOS DE USUÁRIOS...." 

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "....CRIANDO OS USUÁRIOS...."

useradd carlos -m -c "Carlos Eduardo" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -m -c "Maria da Gloria" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -m -c "Joao da Silva" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd debora -m -c "Debora Braz" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Almeida" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -m -c "Roberto Carlos" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd josefina -m -c "Josefina de Jesus" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda Cruz" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogerio Silva" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "....ESPECIFICANDO PERMISSÕES DE DIRETORIOS...." 

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /publico

echo "....FIM...."
