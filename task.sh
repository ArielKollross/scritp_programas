#!/bin/bash

to_day=$(date +%u)
clone_day=4

if [ $to_day -eq $clone_day ]
then
    echo "hj é $to_day"
    

    VBoxManage list vms
    vboxmanage clonevm Clonar\ 3.0 --name teste2

else
    echo "Saindo"
    exit    
fi