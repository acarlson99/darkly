# File upload

http://192.168.56.101/index.php?page=upload

Upload page is not accepting any file that is not a jpg

Checking against Content-Type field in request

If Content-Type is set manually to `image/jpg` the user is able to upload arbitrary files

Modifying the request sent by the page with Burp lets me upload any file

It seems the server is checking Content-Type field and returns the flag if the filename does not match `.*\.jpg`

## Risk

Allows anyone to upload nearly any file

## Fix

Check magic numbers or have some other way of validating the input file

And never EVER run/evaluate a file submitted by the user
