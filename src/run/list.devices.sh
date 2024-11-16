echo wait

for i in $( seq 1 10 ) ; do echo $( ping -c 1 "192.168.15.${i}" | cut -d ' '  -f4 - ) >> devices ; echo "${i} done"  ; done ;

echo ready
