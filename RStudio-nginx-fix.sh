#!/bin/bash
# R/RStudio/Shiny-Server/nginx on Ubuntu

# Configure nginx with RStudio-Server and Shiny-Server virtualhosts
sudo wget https://raw.githubusercontent.com/jtsmith275/ShinyNginxFix/master/default -O /etc/nginx/sites-enabled/default

# Restart services
sudo systemctl restart nginx
sudo systemctl enable nginx
sudo systemctl restart rstudio-server

#Tell user everything works
echo "nginx is now hosting a webpage on http://127.0.0.1"
echo "RStudio Server is now available on http://127.0.0.1:8787 & http://127.0.0.1/rstudio"

