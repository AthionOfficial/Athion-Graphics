#!/bin/bash
for i in ./images/jpg/
do
    if test -f "$i"
    then
      echo "Doing somthing to $i"
      extension="${file##*.}"                     # get the extension
      filename="${file%.*}"                       # get the filename
      rm ./images/jpg/optimized/$filename-optimized.jpg
      convert $i -sampling-factor 4:2:0 -strip -quality 85 -interlace JPEG -colorspace RGB rm ./images/jpg/optimized/$filename-opt.jpg
    fi
done
for i in ./images/png/
do
    if test -f "$i"
    then
      echo "Doing somthing to $i"
      extension="${file##*.}"                     # get the extension
      filename="${file%.*}"                       # get the filename
      rm ./images/png/optimized/$filename-optimized.png
      convert $i -sampling-factor 4:2:0 -strip -quality 85 -interlace JPEG -colorspace RGB rm ./images/png/optimized/$filename-opt.png
    fi
done
