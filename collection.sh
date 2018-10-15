sleep 5
end=$(( $(date +%s) + 300 ))
while [ $(date +%s) -lt $end ]
do
	top -b -n 1 >> ./top_data_webcam.txt
	date -u >> ./date_data_webcam.txt
	ps -w >> ./ps_data_webcam.txt
	netstat -aeltuwx >> ./netstat_data_webcam.txt
	vmstat -d >> ./vmstatd_data_webcam.txt
	vmstat -s >> ./vmstats_data_webcam.txt
	vmstat -m >> ./vmstatm_data_webcam.txt
	sleep 1
done
ping -c 5 192.168.1.2
