# K3s owncloud
Single-node K3s server showing some Open Source Kubernetes tools :

- zalando postgres-operator: https://github.com/zalando/postgres-operator
- owncloud
- cert-manager: https://github.com/jetstack/cert-manager
- letsencrypt
- k3sup: https://github.com/alexellis/k3sup#download-k3sup-tldr

## Installation

### Installation k3s
```sh
export IP=ipdserver
export USER_SERVER=userserver
k3sup install --ip $IP --user $USER_SERVER
```

Export kubeconfig

## Customize configuration

Change values in :
- owncloud/owncloud-configmap.yaml (OWNCLOUD_DOMAIN and OWNCLOUD_ADMIN_USERNAME)
- le/certificate.yaml (commonName and dnsNames)
- owncloud/owncloud-ingress.yaml (host)
- owncloud/owncloud-secret.yaml (OWNCLOUD_ADMIN_PASSWORD)

### Installation all

```sh
git clone https://github.com/eyolas/k3s-owncloud
cd k3s-owncloud
./install.sh
```
