#!/bin/bash

site_packages_path=$(python3 -c "import site; print(site.getsitepackages()[0])")

# Download the files from GitHub
git clone https://github.com/MrIbrahem/frontend-files

# Copy the contents of the public/static/icons folder to site-packages/hass_frontend/static/icons
cp -r frontend-files/public/static/icons $site_packages_path/hass_frontend/static/icons