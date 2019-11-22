# Hidden Directory

http://192.168.56.101/.hidden/

`robots.txt` contains

```
User-agent: *
Disallow: /whatever
Disallow: /.hidden
```

We already explored `/whatever` in admin

Visiting `/.hidden` shows us tons of directories

This will recursively download all directories for us to view locally

```
wget -e robots=off -r -nH --no-parent --reject="index.html*" 'http://192.168.56.101/.hidden/'
```

Enumerate directories to find the file without condescending French

```
$ find . -type f -name '*README' -exec grep -v ' ' {} ';'
99dde1d35d1fdd283924d84e6d9f1d820
```

Find name of file containing flag

```
$ grep -Rn . -e '99dde1d35d1fdd283924d84e6d9f1d820'
./.hidden/whtccjokayshttvxycsvykxcfm/igeemtxnvexvxezqwntmzjltkt/lmpanswobhwcozdqixbowvbrhw/README:1:99dde1d35d1fdd283924d84e6d9f1d820
```

## Risk

Sensitive information leak

## Fix

Hiding information by having too much of it to go through is not viable

Just don't put sensitive information on the server where the user can access it
