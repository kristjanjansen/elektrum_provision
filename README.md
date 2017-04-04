## Elektrum provisioning 

1\. Spin up Digital Ocean / Linode using Ubuntu v16, with 1GB RAM minimum and in Frankfurt region

2\. Receive root credentials via e-mail

3\. SSH into the new machine

4\. Run

```sh
sudo mkdir -p /var/www
cd /var/www
git clone https://github.com/kristjanjansen/elektrum_provision
cd elektrum_provision
./provision.sh
```

(When Mysql dialogbox appears, keep pressing Enter)

5\. Open the new machine IP in browser and you should see PHP info.