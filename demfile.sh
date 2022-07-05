for i in `ls -1b`
do c=`find $i -type f |wc -l`
echo "$c $i"
done
a=`find -type f | wc -l`
echo $a
