# Survey

http://192.168.56.101/index.php?page=survey

Edit survey HTML setting value sent to a much larger number than expected

```html
<option value="100000000000000">10</option>
```

This may not be checked by the server and could result in arbitrarily large votes being sent

## Risk

This vulnerability could allow a user to tamper with data and invalidate the result

## Fix

Validate info returned by page
