#!/bin/bash -x

#ls *_t.csv

#ls *_t-draft.csv

HEADER="\"EnumerationType\",\"EnumerationValue\",\"Description\",\"Status\",\"Recommended\",\"Deprecates\""

# usage: mergedocs HEADER TARGET COMMAND
mergedocs () {
HEADER=$1;
TARGET=$2
COMMAND=$3

echo "Building $TARGET..."

# Header also cleans up the file
echo $HEADER > $TARGET

for CURRENTDOC in $( $COMMAND ) ; do
   # strip header and merge
   cat $CURRENTDOC | tail -n +2 >> $TARGET
done
}

mergedocs $HEADER 'GLUE2OpenEnumerations.csv' 'ls *_t.csv'
mergedocs $HEADER 'GLUE2OpenEnumerations-drafts.csv' 'ls *_t-draft.csv'
