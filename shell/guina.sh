#!/bin/bash
#!/bin/sh
#write your shell cmd:
for file in `find -name "*.sh" -maxdepth 1`
do
echo $file
if [ $file == './drive.sh' -o $file == './guina.sh' ]
then 
   continue
else
    if [[ "$file" =~ "*.sh" ]]
    then
    name=${file%.*}
    mkdir $name
    mv "$name.text" $name
    mv  $file $name
    fi
fi
done

