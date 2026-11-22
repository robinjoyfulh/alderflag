#!/usr/bin/env bash
set -e
REPO="robinjoyfulh/alderflag"
LIB="ivory-crown.a"
URL="https://github.com/${REPO}/releases/download/eager-garden-cosmic-ember/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
