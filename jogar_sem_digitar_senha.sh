#!/bin/bash
# por josegamestest(Jose Anastacio)
#MINETEST_PATH="minetest"
DOMINIO=" biglinux-minetest.ddns.net"
PORTA="30002"
NOME="joseanastacio"
SENHA="dccvvbg\$3dfdftt"

# Abrir o Minetest e conectar ao servidor
##minetest --go --dominio $dominio --port $PORTA --name $NOME --password $SENHA
minetest --go --address $DOMINIO --port $PORTA --name $NOME --password $SENHA
