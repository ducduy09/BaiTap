#! /bin/sh
for((i=0;i<n;i++))
do
echo -n"a[$i]="
read a[$i]
done
lc=1
while [ $lc -gt 0 ]
do
	echo "====menu====="
	echo "nhap lc :"
	read lc
done
exit 0
