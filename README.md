#menggunakan base image ubuntu
From ubuntu:22.04

#Update dan install paket dasar
Run apt-get update && apt-get install -y \
bash \
nano \
curl \
wget \
iputils-ping \
procps \
net-tools

#set Default Shell
CMD ["/bin/bash"]
