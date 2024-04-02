cluster-host: kubernetes
public-domain: example.com

controlPlaneInterface: eth0

harpoxy:
  enabled: false

kubeadm:
  kubernetesVersion: 1.28.0
  # kubeadm token generate
  token: ockpvc.dsmk8rtibt1gr72y
  nodeToken: 4bidtp.y7q8hlsvfro0ech1
  # kubeadm alpha certs certificate-key
  certificateKey: 127a3baac30e6891987e6e20774da9f3334500c1e61cc688604513c116ce1831
  clusterName: onprem_cluster

  networking:
    serviceSubnet: "10.96.0.0/12"
    podSubnet: "10.244.0.0/16"

kubernetes:
  common:
    cri:
      provider: containerd
      crictl_version: 1.15.0
      runc_version: 1.0.0-rc8

    cni:
      network: 10.244.0.0/16
      provider: calico
      calico:
        ipv4:
          autodetection_method: interface=en.*
        ipv6:
          enable: false
          autodetection_method: interface=en.*
