# Page Unsafe Redirect

# Recreate

Redirects at the bottom of the page send to `index.php?page=redirect&site=facebook`

If no site is specified you are sent to a blank page

If `site=index.php` there is a flag :)

# How it works

The `site` field may not be a site the user is intended to visit

This could result in a redirect to a page the user should not have access to

## Fix

* Argument validation
* Link directly to target site
