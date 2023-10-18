common_packages:
  pkg.latest:
    - pkgs:
      - ceph-common
      - httpie
      - jq
      - python3-m2crypto
      - linux-image-{{ grains['kernelrelease'] }}
      - linux-headers-{{ grains['kernelrelease'] }}
      - bpfcc-tools
    - refresh: true
    - reload_modules: true
