#! /bin/sh
# so=`expr $i % 7`
echo "Cac so chia het cho 7 tu 1 den n la: "
if [ $n -lt 7 ]
then
	echo "null"
else
	for ((i=1; i<=$n; i++))
	do
		so=$(($i%7)) 
		if [ $so = 0 ]
			then echo $i
		fi
	done
fi
exit 0
