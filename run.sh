#! /bin/sh
# Author: daemox
# Basis: Parts of the script based on and inspired by work from
#       tret (sabnzbd.org), beckstown (xbmc.org),
#               and midgetspy (sickbeard.com).
# Fixes: Alek (ainer.org), James (ainer.org), Tophicles (ainer.org),
#               croontje (sickbeard.com)
# Contact: http://www.ainer.org
# Version: 3.1

### BEGIN INIT INFO
# Provides:          sickbeard
# Required-Start:    $local_fs $network $remote_fs
# Required-Stop:     $local_fs $network $remote_fs
# Should-Start:      $NetworkManager
# Should-Stop:       $NetworkManager
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: starts and stops sick beard
# Description:       Sick Beard is an Usenet PVR. For more information see:
#                       http://www.sickbeard.com
### END INIT INFO

#Required -- Must Be Changed!
#USER="root" #Set Linux Mint, Ubuntu, or Debian user name here.
#HOST="127.0.0.1" #Set Sick Beard address here.
#PORT="8081" #Set Sick Beard port here.

ln -sf /config/config.ini /opt/Sick-Beard/
ln -sf /config/sickbeard.db /opt/Sick-Beard/sickbeard.db

echo "Starting Sick Beard"
#python /opt/Sick-Beard/SickBeard.py -q > /dev/null 2>&1 &
exec /opt/Sick-Beard/SickBeard.py
