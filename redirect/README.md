# Unsafe Redirect

http://192.168.56.101/index.php?page=redirect&site=facebook

Redirects at the bottom of the page send to `index.php?page=redirect&site=facebook`

If no site is specified you are sent to a blank page

If `site=index.php` there is a flag :)

## Risk

The `site` field may not be a site the user is intended to visit

This could result in a redirect to a page the user should not have access to

## Fix

Argument validation or linking directly to target site
