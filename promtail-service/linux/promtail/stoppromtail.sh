for server in $(cat server.txt)
do
   #ssh -t $server "rm -rf /tmp/position.yaml"
#ssh -T $server << EOF
#   sudo systemctl start promtail
#EOF

##see status of promtail service
systemctl -H  pawkumar@$server status promtail

done
