#!/bin/bash

# Carrega as variáveis de ambiente do arquivo .env
export $(grep -v '^#' .env | xargs)

# Constrói a imagem Docker passando as variáveis de ambiente como argumentos
docker build --build-arg MYSQL_DATABASE=$MYSQL_DATABASE --build-arg MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD -t desafio_it_talent_junho_01 .
