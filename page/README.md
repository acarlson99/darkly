# Page

http://192.168.56.101/?page=baddata

Setting `page` to weird values returns a `wtf` popup

Going back a couple directories replaces that with `wrong`

Going back some more gives different answers

Eventually it returns the same popup no matter how deep you go

What are some files I would like to access?  How about the one that has all the passwords in it

`http://192.168.56.101/?page=../../../../../../../../etc/passwd` returns the flag

## Risk

User could access files on host machine

## Fix

Don't use the raw value sent by the server

Validate it somehow and/or have a few preset variables that are valid
