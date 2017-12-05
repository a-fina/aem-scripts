#!/bin/bash


ERROR=$1
AEM_LOG=/app/adobe/cq/author/crx-quickstart/logs


echo "file                   errori: $ERROR"; 
for i in $( ls $AEM_LOG/error.log*); 
  do echo -n "$i     "; 
    zgrep $ERROR $i | wc | awk '{print $1}'; 
done

