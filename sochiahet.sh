#! /bin/sh
echo "Cac so chia het cho 7 tu 1 den n la: "
for ((i=1; i<=$n; i++))
do
	so=`expr $i % 7`
	if [ $so = 0 ]
		then echo $i
	fi
done
exit 0
