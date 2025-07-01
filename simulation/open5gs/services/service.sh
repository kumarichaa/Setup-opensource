#!/bin/bash

BASE_DIR=/usr/local/src/open5gs/install/bin

$BASE_DIR/open5gs-nrfd & 
$BASE_DIR/open5gs-scpd &
$BASE_DIR/open5gs-amfd &
$BASE_DIR/open5gs-smfd &
$BASE_DIR/open5gs-upfd &
$BASE_DIR/open5gs-pcfd &
$BASE_DIR/open5gs-ausfd &
$BASE_DIR/open5gs-udmd &
$BASE_DIR/open5gs-nudrd &
$BASE_DIR/open5gs-bsfd &
$BASE_DIR/open5gs-nssfd &
$BASE_DIR/open5gs-pcrfd &
$BASE_DIR/open5gs-udrd &

echo "All Open5GS services started."