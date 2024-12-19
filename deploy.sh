#!/bin/bash

scp cat/s21_cat ws3@192.168.10.3:/usr/local/bin/ 
scp grep/s21_grep ws3@192.168.10.3:/usr/local/bin/

if [ $? -ne 0 ]; then
    echo "Ошибка копирования"
    exit 1
fi

ssh ws3@192.168.10.3 ls -lah /usr/local/bin/

if [ $? -ne 0 ]; then
    echo "Ошибка перемещения"
    exit 1
fi
