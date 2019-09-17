#!/bin/bash

sudo echo "EC2 Hostname is  ..... " > index.html

sudo cat /etc/hostname >> index.html

sudo cp -r ./index.html -d /var/www/html/.

