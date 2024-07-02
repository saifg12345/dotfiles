#/bin/sh

status () { 

	echo -n "battery: $(acpi | awk '{print $4}' | sed s/,//) | $(date +'%H:%M')"
}

while :; do
	
	echo "$(status)"
	sleep 1

done
