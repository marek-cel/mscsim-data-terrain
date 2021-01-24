#!/bin/bash

################################################################################

source set_paths.sh

################################################################################
# PHNL - Honolulu International Airport
# PHIK - Hickam Air Force Base
################################################################################

vpbmaster --patch build_master.source -t Custom/airport_phnl/phnl.tif
vpbmaster --patch build_master.source -d Custom/airport_phnl/phnl_elev.tif

FILES=./Custom/airport_phnl/tiled/*.tif
for f in $FILES
do
  echo "Processing $f file..."
  vpbmaster --patch build_master.source -t $f
done

################################################################################

notify-send "Patching (PHNL) Kalaeloa Airport." "Finished."
