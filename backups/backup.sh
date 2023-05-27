#!/bin/bash

backup_folder=$(date +'%Y-%m-%d')
rsync -azr $HOME/.ssh $HOME/Documents $HOME/Keys $HOME/Ansible $HOME/Git /var/opt/Backups/${HOSTNAME}_${backup_folder}
