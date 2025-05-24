#menggunakan base image ubuntu
From ubuntu:22.04

#update dan install paket dasar
Run apt-get && apt-get install -y \
bash \
nano \
curl \
wget \
iputils-ping \
procps \
net-tools

#set Defalut Shell
CMD ["/bin/bash"]
