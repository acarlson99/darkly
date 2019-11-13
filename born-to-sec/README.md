# Born to Sec

Link under Facebook, Twitter, Insta links

Interesting comments in HTML near bird link

```html
<!--
You must cumming from : "https://www.nsa.gov/" to go to the next step
-->
```

This sounds like the `Referer` header field

```html
<!--
Let's use this browser : "ft_bornToSec". It will help you a lot.
-->
```

This sounds like the `User-Agent` header field

This curl command sets all the right fields in the header and makes a request

```bash
curl -v \
-H 'Referer: https://www.nsa.gov/' \
-H 'User-Agent: ft_bornToSec' \
'http://localhost:8000/?page=e43ad1fdc54babe674da7c7b8f0127bde61de3fbe01def7d00f151c2fcca6d1c' \
> out.html
```

Sure enough the flag is sent back
