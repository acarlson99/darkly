# Signin

http://192.168.56.101/index.php?page=signin

Tried lots of SQL injection stuff on username/password

Tried brute-forcing it by throwing the infamous rockyou.txt the password field with username set to admin, then root

```bash
bash bruteforce.sh root ~/Downloads/rockyou.txt
```

After a bit this will find the password

## Risk

Anyone can do this and become root

## Fix

Better passwords

Brute force detection tools

Captcha
