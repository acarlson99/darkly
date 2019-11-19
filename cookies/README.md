# Cookies

Cookie called `i_am_admin`

Value is md5 hashed of string `false`

```
> echo -n 'true' | md5sum
b326b5062b2f0e69046810717534cb09  -
```

Set cookie value to this, reload, and get the flag

## Risk

Any user can become admin

## Fix

Use proper tokens to validate user privileges rather than a hashed boolean
