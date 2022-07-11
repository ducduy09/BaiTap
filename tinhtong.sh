#! /bin/sh
s=0
for ((i=0; i<=$n; i++))
do
	s=$(($s+$i))
done
echo "Tong se la: $s"
exit 0
