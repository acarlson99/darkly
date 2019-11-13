# Survey page overflow

Edit survey HTML setting value sent to a much larger number than expected

```html
<option value="100000000000000">10</option>
```

This may not be checked by the server and could result in arbitrarily large votes being sent

## Fix

Validate info returned by page
