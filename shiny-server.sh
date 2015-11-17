#!/bin/sh

# Make sure the directory for individual app logs exists
mkdir -p /var/log/shiny-server
chown shiny.shiny /var/log/shiny-server

# get our apps
cp -R /srv/shinyapps/* /srv/shiny-server

# start
exec shiny-server >> /var/log/shiny-server.log 2>&1
