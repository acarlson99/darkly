# Sign in

Tried lots of SQL injection stuff on username/password

Tried brute-forcing it by throwing the infamous rockyou.txt the password field with username set to admin, then root

```bash
bash bruteforce.sh root ~/Downloads/rockyou.txt
```

After a bit this will find the password

## Risk

Anyone can do this and become root

## Fix

Just use better passwords
