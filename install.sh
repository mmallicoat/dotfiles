#!/bin/bash

source_dir=$( pwd )

for dir in $( ls -d $source_dir )
do
    for df in $( ls -a $dir )
    do
        echo $source_dir/$dir/$df
    done
done


for foo in $( ls -RA $source_dir )
do
    echo $foo
done
