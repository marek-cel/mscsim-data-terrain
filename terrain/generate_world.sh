#!/bin/bash

source set_paths.sh

################################################################################

# World (generate low res texture)
# vpbmaster --geocentric --TERRAIN --PagedLOD -t BMNG/land_ocean_ice/land_ocean_ice_8192.tif -d BMNG/elev/gebco_08_rev_elev_2048x1024.tif -o terrain/terrain.osgb
vpbmaster --geocentric --TERRAIN --PagedLOD -t Custom/world/land_ocean_ice_8192.tif -d BMNG/elev/gebco_08_rev_elev_2048x1024.tif -o terrain/terrain.osgb

################################################################################

notify-send "Generating world." "Finished."
