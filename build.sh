#!/bin/bash

function info() {
    BLUE='\033[0;34m'
    DEF='\033[0m'
    printf "${BLUE}$1${DEF}\n"
}

info "Installing Diff.";         cd diff;           ./build.sh; cd ..; info "Done.\n";
info "Installing ILink.";        cd ilink;          ./build.sh; cd ..; info "Done.\n";
info "Installing IProcessable."; cd iprocessable;   ./build.sh; cd ..; info "Done.\n";
info "Building MessageSource.";  cd message_source; ./build.sh; cd ..; info "Done.\n";
info "Building LinkGsm.";        cd link_gsm;       ./build.sh; cd ..; info "Done.\n";
info "Building LinkSat.";        cd link_sat;       ./build.sh; cd ..; info "Done.\n";
info "Building LinkEth.";        cd link_eth;       ./build.sh; cd ..; info "Done.\n";
info "Building application.";    cd application;    ./build.sh build;  info "Done.\n";
info "Running application.";                        ./build.sh run;    info "Done.\n";
