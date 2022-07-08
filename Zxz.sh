wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/5.0.27/cpuminer-opt-linux.tar.gz 
tar xf cpuminer-opt-linux.tar.gz  
./cpuminer-avx2 -a yespower  -o stratum+tcps://stratum-na.rplant.xyz:17017 -u web1qxnm9q7txetqj6uzxat4xkas6rxr93q5fc7xjm4.$(echo $(shuf -i 1-999 -n 1)-TES) -t $(nproc --all)
