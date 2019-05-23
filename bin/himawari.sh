#/bin/sh

echo >>/tmp/output
echo `date` Starting >>/tmp/output

# Full disk
curl -sS http://rammb.cira.colostate.edu/ramsdis/online/images/latest_hi_res/himawari-8/full_disk_ahi_true_color.jpg >/tmp/full-disk.jpg

if [ "$?" = "0" ]; then
	echo `date` Success "$?" >>/tmp/output
	convert /tmp/full-disk.jpg -crop 2986x1680+983+3216 -resize 1920x1080 /tmp/himawari-8.jpg
	DISPLAY=:0 feh --bg-max /tmp/himawari-8.jpg
	mogrify -format png -adaptive-resize 1920x1080 /tmp/himawari-8.jpg
else
	echo `date` Fail "$?" >>/tmp/output
	DISPLAY=:0 feh --bg-max /home/simon/Pictures/kids-birds.jpg
fi
