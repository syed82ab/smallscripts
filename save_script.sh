#!/bin/bash

url='https://image.slidesharecdn.com/runningofnisttest-180810154001/95/running-of-nist-test-'
prefix='nist-'
for ((i = 1 ; i <=20 ; i= i+1)) 
   do
   j=$(printf "%02d" $i)
   wget -O $prefix$j.jpg $url$i-1024.jpg 
   sleep 0.6
done


magick prefix*.jpg combine.pdf
