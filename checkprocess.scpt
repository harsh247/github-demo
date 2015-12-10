clear
flag=1
read str
while [ $flag -eq 1 ]
do
a=`sudo find / -name $str`
p=`sudo pidof $a`
if [ -z $p ]
then
$a & echo $!>checkpid.txt
else
p=`sudo pidof $a`
echo "PID of process:$p"
fi
done
