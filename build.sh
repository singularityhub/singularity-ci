#!/bin/bash

def="Singularity"

# If there are more args
if [ "$#" -eq 0 ]; then
    args="--size 1024*1024B"
else
    args="$@"
fi

# Continue if the image is found
if [ -f "$def" ]; then
    # The name of the image is the definition file minus extension
    imagefile=`echo "${def%%.*}"`
    echo "Creating $imagefile using $def..."
    singularity create $args $imagefile.img
    singularity bootstrap $imagefile.img $def
    mv $imagefile.img /data/$imagefile.img
else
    echo "Singularity file must be in present working directory."
    exit 1
fi
