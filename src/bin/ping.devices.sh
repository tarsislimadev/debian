echo wait

echo > ./devices

for i in $( seq 1 10 ) ; do echo $( ping -c 1 "192.168.15.${i}" | cut -d ' '  -f 4 - | cut -d ' ' -f 2 ) >> ./devices ; echo "${i} done"  ; done ;

cat ./devices

echo ready
