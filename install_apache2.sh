#!/bin/bash

if [ -f /etc/debian_version ]; then
	echo "Installing on Debian(Ubuntu)"
    sudo apt install -y apache2
elif [ -f /etc/redhat-release ]; then
	echo "Installing on Rhel(CentOS)"
    sudo yum install -y httpd
else
echo "ERROR: Unknown system"
exit 1
fi
