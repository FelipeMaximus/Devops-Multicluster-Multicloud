#!/bin/bash
curl https://releases.rancher.com/install-docker/19.03.sh | sh
apt install -y open-iscsi
docker run -d --privileged --restart=unless-stopped --net=host -v /etc/kubernetes:/etc/kubernetes -v /var/run:/var/run rancher/rancher-agent:v2.4.9 --server https://18.119.105.74 --token h7jq5zhz6g5ntkrnfchhdgfh9qn9wxr8lvt7nsjb6l6vlqwm9wm5j9 --ca-checksum 1be561b354d72a3aedf8509777d46548250c3b7b36fc967ee722594244d226ce --etcd --controlplane --worker