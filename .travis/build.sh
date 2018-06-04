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

    echo "Testing the image... Marco!"
    singularity run $imagefile.simg

else

    echo "Singularity recipe $def not found!"
    exit 1

fi
