#!/bin/bash

################################################################################

source set_paths.sh

################################################################################
# 02HI - K3 Helipad
################################################################################

vpbmaster --patch build_master.source -t Custom/airport_02hi/02hi.tif
vpbmaster --patch build_master.source -d Custom/airport_02hi/02hi_elev.tif

################################################################################

notify-send "Patching (02HI) K3 Helipad." "Finished."
