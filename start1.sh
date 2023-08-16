#!/bin/bash
sudo -u homeassistant -H -s
source /srv/homeassistant/bin/activate
# hass --open-ui --debug
nohup hass --debug
