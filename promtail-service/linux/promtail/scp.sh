for server in $(cat server.txt)
do
  scp -r promtail-files  "$server":/home/pawkumar/
done
