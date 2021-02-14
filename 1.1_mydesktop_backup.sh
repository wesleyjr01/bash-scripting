#! /usr/bin/bash

# Backup files from Desktop
nowdate=$(date '+%Y-%m-%d')
tar -czf "mydesktop_directory_${nowdate}.tar.gz" --exclude=/home/wb/Desktop/Senior_Captura /home/wb/Desktop