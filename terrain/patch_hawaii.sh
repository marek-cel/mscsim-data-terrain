#!/bin/bash

source set_paths.sh

vpbmaster --patch build_master.source -t Custom/hawaii/ocean.tif

# Landsat texture
vpbmaster --patch build_master.source -t hawaii.gov/Landsat/big_island.tif
vpbmaster --patch build_master.source -t hawaii.gov/Landsat/kauai.tif
vpbmaster --patch build_master.source -t hawaii.gov/Landsat/lanai.tif
vpbmaster --patch build_master.source -t hawaii.gov/Landsat/maui_kahoolawe.tif
vpbmaster --patch build_master.source -t hawaii.gov/Landsat/molokai.tif
vpbmaster --patch build_master.source -t hawaii.gov/Landsat/niihau.tif
# vpbmaster --patch build_master.source -t hawaii.gov/Landsat/oahu.tif

FILES=./SRTM/hawaii/3arc_v2/*.tif
for f in $FILES
do
  echo "Processing $f file..."
  vpbmaster --patch build_master.source -d $f
done

notify-send "Patching Hawaii." "Finished."
