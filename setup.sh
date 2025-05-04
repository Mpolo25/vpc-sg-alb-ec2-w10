#!/bin/bash
sudo dnf update -y
sudo dnf install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<html><h1><p> Welcome to THEMADHOUSE.<br> You are redirected to ${HOSTNAME} Hard work gives you a meal, smart work gives you a lifestyle.</p></h1></html>" | sudo tee /var/www/html/index.html > /dev/null