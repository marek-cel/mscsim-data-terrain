#!/bin/bash

./generate_world.sh
./patch_hawaii.sh
./patch_oahu.sh

./patch_airport_02hi.sh
./patch_airport_phdh.sh
./patch_airport_phhi.sh
./patch_airport_phjr.sh
./patch_airport_phng.sh
./patch_airport_phnl.sh
# no need when whole Pearl Harbor elevation patched
#./patch_airport_phnp.sh

./patch_airport_xgen.sh
