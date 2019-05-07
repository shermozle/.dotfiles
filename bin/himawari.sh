#/bin/sh

curl -s http://rammb.cira.colostate.edu/ramsdis/online/images/latest_hi_res/himawari-8/full_disk_ahi_true_color.jpg >/tmp/himawari-8.jpg
if [ "$?" = "0" ]; then
	feh --bg-max /tmp/himawari-8.jpg
	mogrify -format png -adaptive-resize 1920x1080 /tmp/himawari-8.jpg
else
	feh --bg-max /home/simon/Pictures/kids-birds.jpg
fi
