#!/bin/bash

echo "Criando usuários do sistema...)

useradd guest2 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest2 -e

useradd guest3 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest3 -e

useradd guest4 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest4 -e

useradd guest5 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest5 -e

echo "Finalizando!!"
