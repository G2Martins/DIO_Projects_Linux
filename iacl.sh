#!/bin/bash

echo "Criando Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários"

useradd carlos -c"Carlos" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -c"Maria" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -c"João" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd debora -c"Debora" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -c"Sebastiana" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -c"Roberto" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd josefina -c"Josefina" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -c"Amanda" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -c"Rogerio" -s /bin/bash -m -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "Alterando permissões dos diretórios"

chmod 777 /publico

chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec

echo "FIM..."



