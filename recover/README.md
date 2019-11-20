# Recover Password

http://192.168.56.101/index.php?page=recover

Password is being sent to email hardcoded into HTML

Change the hardcoded email and it sends it wherever you want

## Risk

This allows anyone to 'recover' a password and steal it

## Fix

Do not harcode email

If it must be hardcoded it should be done server-side
