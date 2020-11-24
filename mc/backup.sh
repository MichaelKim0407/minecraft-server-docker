#!/bin/bash

t=$(date "+%Y-%m-%d %H:%M:%S")
tar czf "/var/backup/${t}.tar.gz" -C /var/minecraft --exclude logs .
