#!/bin/bash

if [ "$#" -eq 0 ]; then
    def="Singularity"
else
    def="$@"
fi

# Continue if the image is found
if [ -f "$def" ]; then
    # The name of the image is the definition file minus extension
    imagefile=`echo "${def%%.*}"`
    echo "Creating $imagefile.simg using $def..."
    sudo singularity build $imagefile.simg $def
    singularity run $imagefile.simg
else
    echo "Singularity file must be in present working directory."
    exit 1
fi
