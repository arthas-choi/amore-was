#!/bin/bash

WEBAPPS_HOME=/usr/share/tomcat8/webapps
APP_FILE="$WEBAPPS_HOME/app.war"
APP_HOME=/usr/share/tomcat8/webapps/app

rm -rf "$APP_HOME"
rm -f "$APP_FILE"
