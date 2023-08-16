#!/bin/bash
sudo -u homeassistant -H -s
cd /srv/homeassistant
source /srv/homeassistant/bin/activate

site_packages_path=$(python3 -c "import site; print(site.getsitepackages()[0])")

# Download the files from GitHub
git clone https://github.com/MrIbrahem/frontend-files

# Copy the contents of the public/static/icons folder to site-packages/hass_frontend/static/icons
# cp -r frontend-files/public/static/icons $site_packages_path/hass_frontend/static/icons
cp -r frontend-files/public/static/icons/* $(python3 -c "import site; print(site.getsitepackages()[0])")/hass_frontend/static/icons
cp -r /home/vb_vb00/x/public/static/icons/* /home/vb_vb00/.local/lib/python3.9/site-packages/hass_frontend/static/icons
