#! /bin/sh
ln -sf /config/config.ini /opt/Sick-Beard/
ln -sf /config/sickbeard.db /opt/Sick-Beard/sickbeard.db

echo "Starting Sick Beard"
#python /opt/Sick-Beard/SickBeard.py -q > /dev/null 2>&1 &
exec /opt/Sick-Beard/SickBeard.py
