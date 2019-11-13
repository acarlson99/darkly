# Admin page

Ran `nmap -v --script http-enum.nse 192.168.56.101` on site to enumerate directories

Found `/whatever` and `/admin` directories

Found `htpasswd` file in `/whatever`

Copy-pasting the hashed password into google yields the original password

This allows me to log in as admin in `/admin`
