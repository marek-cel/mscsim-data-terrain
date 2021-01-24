#!/bin/bash

################################################################################

source set_paths.sh

################################################################################
# PHHI - Wheeler Army Airfield
################################################################################

vpbmaster --patch build_master.source -t Custom/airport_phhi/phhi.tif
vpbmaster --patch build_master.source -d Custom/airport_phhi/phhi_elev.tif

FILES=./Custom/airport_phhi/tiled/*.tif
for f in $FILES
do
  echo "Processing $f file..."
  vpbmaster --patch build_master.source -t $f
done

################################################################################

notify-send "Patching (PHHI) Wheeler Army Airfield." "Finished."
