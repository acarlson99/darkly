# Admin Page

http://192.168.56.101/admin/

Ran `nmap -v --script http-enum.nse 192.168.56.101` on site to enumerate directories

Found `/whatever` and `/admin` directories

Found `htpasswd` file in `/whatever`

Copy-pasting the hashed password into google yields the original password

This allows me to log in as admin in `/admin`

## Risk

Arbitraty users should never be able to sign in as an admin

## Fix

Do not EVER store even a hashed password ON THE SERVER
