#!/bin/bash
# ---------------------------------------------------------------------------
# EC2 User Data — Simple Web Server Bootstrap (Task 1)
#
# Runs once, automatically, with root privileges on first boot.
# Installs Apache (httpd), enables it to start on boot, starts it, and
# writes a one-line HTML page so the server returns a visible response.
#
# AMI: Amazon Linux 2023 (uses dnf as the package manager)
# ---------------------------------------------------------------------------

# Install the Apache web server
dnf install -y httpd

# Enable httpd to start automatically on every boot
systemctl enable httpd

# Start httpd now
systemctl start httpd

# Create a simple landing page
echo '<html><h1>Hello From Your Web Server!</h1></html>' > /var/www/html/index.html
