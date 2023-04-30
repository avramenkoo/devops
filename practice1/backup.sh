#!/bin/bash

tar -cvf ~/backups/backup-$(date +%Y-%m-%d).tar --exclude-from="exclude.txt" ~/some/important/directory
