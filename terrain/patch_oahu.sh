#!/bin/bash

source set_paths.sh

# Oahu (patch hi res texture)
FILES=./Orthoimagery/oahu_2004-02-01/tiled/*.tif
for f in $FILES
do
  echo "Processing $f file..."
  vpbmaster --patch build_master.source -t $f
done

# Oahu (patch hi res elevation)
# vpbmaster --patch build_master.source -d Custom/oahu/oahu_elev.tif
vpbmaster --patch build_master.source -d SRTM/oahu/1arc_v3/oahu.tif

# Pearl Harbor (LiDAR)
vpbmaster --patch build_master.source -d Custom/oahu/pearl_harbor_elev.tif

notify-send "Patching Oahu" "Finished."
