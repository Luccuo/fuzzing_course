#!/bin/bash

set -e

RED='\033[1:91m'
NC='\033[0m'

echo -e "${RED}Repo checkout:${NC}"
rm -rf /opt/tcpdump
cd /opt/
git clone https://github.com/Luccuo/tcpdump.git
git config --global --add safe.directory /opt/tcpdump
cd /opt/tcpdump
git checkout tcpdump-4.5.0 -f

echo -e "${RED}Repo release:${NC}"
cd /opt/tcpdump
autoreconf
./configure --disable-shared --enable-threads=no
make -j$(nproc)
