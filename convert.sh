#!/bin/bash

INPUT_DIRECTORY="raw"
OUTPUT_DIRECTORY="prepared"

if ! [ -d "INPUT_DIRECTORY" ]
  then
    echo "Directory \"$INPUT_DIRECTORY\" is not exist"
    exit 0
fi

echo "Converting \".cr2\" to \".jpeg\" from \"$INPUT_DIRECTORY\" to \"$OUTPUT_DIRECTORY\""
rm -rf $OUTPUT_DIRECTORY
mkdir $OUTPUT_DIRECTORY
count=0
for file in `find $INPUT_DIRECTORY -type f -iname "*.cr2"`
do
  let "count+=1"
  filename=$(basename -- "$file")
  filename="${filename%.*}"
  dcraw -c -w ${file} | convert - ${OUTPUT_DIRECTORY}/${filename}.jpeg
  echo "File ${count} processed"
done
thumbgen -w 4 -r -d $OUTPUT_DIRECTORY
echo "Total prepared ${count} image(s)"
