#!/bin/bash

################################################################################

APP_NAME=mscsim
APP_VER=0.1

################################################################################

DATA_TERRAIN_DIR=${APP_NAME}-data-terrain_${APP_VER}_focal_all

sudo rm -R $DATA_TERRAIN_DIR
sudo rm $DATA_TERRAIN_DIR.deb

sudo rm -R $DATA_TERRAIN_DIR
sudo rm $DATA_TERRAIN_DIR.deb

mkdir $DATA_TERRAIN_DIR
mkdir $DATA_TERRAIN_DIR/DEBIAN
mkdir $DATA_TERRAIN_DIR/usr
mkdir $DATA_TERRAIN_DIR/usr/share
mkdir $DATA_TERRAIN_DIR/usr/share/mscsim
mkdir $DATA_TERRAIN_DIR/usr/share/mscsim/data
mkdir $DATA_TERRAIN_DIR/usr/share/mscsim/data/cgi
mkdir $DATA_TERRAIN_DIR/usr/share/mscsim/data/cgi/scenery

cp deb_mscsim-data-terrain_all.control $DATA_TERRAIN_DIR/DEBIAN/control
cp -R data/cgi/scenery/terrain/ $DATA_TERRAIN_DIR/usr/share/mscsim/data/cgi/scenery/

sudo chown root:root -R $DATA_TERRAIN_DIR/

dpkg -b $DATA_TERRAIN_DIR/

################################################################################

read -p "Press any key to continue..." -n1 -s
