#!/bin/sh

if [ ! -d "$1" ]; then
   mkdir $1
   cd $1
   i=0
   while [ $i -lt 5 ]
   do
       touch "file$i.txt"
       mkdir file$i
       ln -s file$i.txt file$i/file$i.txt
       i=$((i + 1))
   done

fi

exit 0