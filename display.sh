	#!/bin/bash
	 
	if [ -z "$(xrandr --listmonitors | grep DP-1-1)" ]; then
	        xrandr --setmonitor DP-1-1 2560/600x1440/340+0+0 DP-1
	        xrandr --setmonitor DP-1-2 2560/600x1440/340+2560+0 none 
	        xrandr --fb 5120x1441
	        xrandr --fb 5120x1440
	        echo "Virtual monitors created.."
	else
	        xrandr --delmonitor DP-1-1 
	        xrandr --delmonitor DP-1-2 
	        xrandr --fb 5120x1441
	        xrandr --fb 5120x1440
	        echo "Virtual monitors deleted.."
	fi
