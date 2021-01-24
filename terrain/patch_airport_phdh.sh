#!/bin/bash

################################################################################

source set_paths.sh

################################################################################
# PHDH - Dillingham Airfield
################################################################################

vpbmaster --patch build_master.source -t Custom/airport_phdh/phdh.tif
vpbmaster --patch build_master.source -d Custom/airport_phdh/phdh_elev.tif

FILES=./Custom/airport_phdh/tiled/*.tif
for f in $FILES
do
  echo "Processing $f file..."
  vpbmaster --patch build_master.source -t $f
done

################################################################################

notify-send "Patching (PHDH) Dillingham Airfield." "Finished."
