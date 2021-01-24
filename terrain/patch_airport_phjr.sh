#!/bin/bash

################################################################################

source set_paths.sh

################################################################################
# PHJR - Kalaeloa Airport
################################################################################

vpbmaster --patch build_master.source -t Custom/airport_phjr/phjr.tif
vpbmaster --patch build_master.source -d Custom/airport_phjr/phjr_elev.tif

FILES=./Custom/airport_phjr/tiled/*.tif
for f in $FILES
do
  echo "Processing $f file..."
  vpbmaster --patch build_master.source -t $f
done

################################################################################

notify-send "Patching (PHJR) Kalaeloa Airport." "Finished."
