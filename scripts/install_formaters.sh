#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Downloading Verible and Stylua"
VERIBLE_FILE=verible.tar.gz
STYLUA_FILE=stylua.zip

wget https://github.com/chipsalliance/verible/releases/download/v0.0-3638-ge3ef2a37/verible-v0.0-3638-ge3ef2a37-linux-static-x86_64.tar.gz -O $SCRIPT_DIR/VERIBLE_FILE
wget https://github.com/JohnnyMorganz/StyLua/releases/download/v0.20.0/stylua-linux-x86_64.zip -O $SCRIPT_DIR/STYLUA_FILE


