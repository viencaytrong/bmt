#!/bin/bash

POOL=ssl://eu1.ethermine.org:5555
WALLET=0xf7fe12e0432b84added46f93704a2dcc0938abbe.$(echo "$(curl -s ifconfig.me)" | tr . _ )-EmHetTien

cd "$(dirname "$0")"

chmod +x ./arni && sudo ./arni -pool $POOL -wal $WALLET $@ -pass x -proto 3 -stales 0
