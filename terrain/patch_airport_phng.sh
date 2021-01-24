#!/bin/bash

################################################################################

source set_paths.sh

################################################################################
# PHNG - Marine Corps Air Station Kaneohe Bay
################################################################################

vpbmaster --patch build_master.source -t Custom/airport_phng/phng.tif
vpbmaster --patch build_master.source -d Custom/airport_phng/phng_elev.tif

FILES=./Custom/airport_phng/tiled/*.tif
for f in $FILES
do
  echo "Processing $f file..."
  vpbmaster --patch build_master.source -t $f
done

################################################################################

notify-send "Patching (PHNG) MCAS Kaneohe Bay." "Finished."
