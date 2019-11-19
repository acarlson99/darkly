# Feedback

http://192.168.56.101/?page=feedback

Entered `a` as name and `b` as comment

Suddenly a wild flag appeared

Only works with certain single letters it seems (aceilprst)

Console throws these errors and links to page source

```
ReferenceError: checkForm is not defined192.168.56.101:1:1
    onclick http://192.168.56.101/?page=feedback:1
ReferenceError: mtxMessage is not defined
    validate_form http://192.168.56.101/?page=feedback:57
    onsubmit http://192.168.56.101/?page=feedback:1
```

The site is not checking whether or not functions exist

`mtxMessage` does not exist and cannot validate the message properly

NOTE: The accepted letters are an anagram of `particles`

## Risk

Lack of validation could lead to an attacker writing arbitrary code to be run when anyone loads the page

## Fix

This could be fixed simply by defining the undefined function and making it properly validate requests
