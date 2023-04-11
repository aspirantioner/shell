#!/bin/bash
#!/bin/sh

#read line and swap first and end line 
total=`cat $1 | wc -l` #统计行数
count=1
first=" "
while read line 
do 
    if [ $count -eq 1 ]
    then 
        first=$line
        echo `tail -n 1 $1` >> temp.text #保存第一行并输入最后一行
    else
        if  [ $count == $total ]
        then
            echo $first >> temp.text    #将第一行输入至最后一行
        else
            echo $line >> temp.text  
        fi
    fi
    count=`expr $count + 1`
done < $1
mv temp.text cat-line.text #替换中间文本