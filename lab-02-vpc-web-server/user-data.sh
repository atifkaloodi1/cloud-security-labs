#!/bin/bash
# ---------------------------------------------------------------------------
# EC2 User Data — Web Server Bootstrap (Task 4)
#
# This script runs once, automatically, with root privileges the first time
# the instance boots. It provisions an Apache web server with PHP and a
# MariaDB database, then deploys a sample PHP application that displays the
# AWS logo and the instance's metadata.
#
# AMI: Amazon Linux 2023 (uses dnf as the package manager)
# ---------------------------------------------------------------------------

# Install Apache Web Server, wget, PHP, and MariaDB
dnf install -y httpd wget php mariadb105-server

# Download the lab application archive
wget https://aws-tc-largeobjects.s3.us-west-2.amazonaws.com/CUR-TF-100-ACCLFO-2/2-lab2-vpc/s3/lab-app.zip

# Unzip the application into the Apache web root
unzip lab-app.zip -d /var/www/html/

# Enable the web server to start automatically on boot
chkconfig httpd on

# Start the web server now
service httpd start
