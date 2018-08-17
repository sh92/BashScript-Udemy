#!bin/bash

INPUT_FILE=$1
BASE_DIR=$(dirname $INPUT_FILE)
# -s option remove the extension
BASE_NAME=$(basename -s .mp4 $INPUT_FILE)
TMP_FILE=$(mktemp --suffix-.wav)
OUT_FILE="$BASE_DIR/$BASE_NAME.wav"

#Extract audio
avconv -y -i $INPUT_FILE $TMP_FILE

# Take audio from on channel to create a mono wav file
sox $TMP_FILE -c 1 $OUT_FILE

#Display the name of file on the screen
echo
echo $OUT_FILE
