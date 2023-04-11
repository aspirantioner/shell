#!/bin/bash
#!/bin/sh
#write your shell cmd:
count=1
echo -n '' > temp.text
while read line
do
if [ `expr $count % 2` == 1 ]
then
echo -n $line>> temp.text
else
echo $line >> temp.text
fi
count=`expr $count + 1`
done < $1
mv temp.text union.text