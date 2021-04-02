sudo mkdir -p /etc/promtail/bin
sudo cp -f promtail-files/promtail /etc/promtail/bin
sudo cp -f promtail-files/promtail-linux-config.yml  /etc/promtail
sudo cp -f promtail-files/promtail.service /etc/systemd/system/
sudo mkdir -p /var/run/secrets/kubernetes.io/serviceaccount
sudo cp promtail-files/token /var/run/secrets/kubernetes.io/serviceaccount/
sudo rm -rf /tmp/positions.yaml
sudo systemctl daemon-reload
sudo systemctl stop promtail
sudo systemctl start promtail
sudo systemctl enable promtail

