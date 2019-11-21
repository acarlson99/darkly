# Darkly

This expects the server to be located at `192.168.56.101`

## Exploits

| exploit                                       | type                                                                                                                                |
| -                                             | -                                                                                                                                   |
| [feedback](./feedback/README.md)              | bad argument validation, [XSS](https://www.owasp.org/index.php/Cross-site_Scripting_(XSS))                                          |
| [social media redirect](./redirect/README.md) | [unsafe redirect](https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html)               |
| [member search](./member/README.md)           | [SQL injection](https://www.owasp.org/index.php/SQL_Injection)                                                                      |
| [image search](./searchimg/README.md)         | [SQL injection](https://www.owasp.org/index.php/SQL_Injection)                                                                      |
| [born to sec](./born-to-sec/README.md)        | header spoofing                                                                                                                     |
| [survey](./survey/README.md)                  | form validation                                                                                                                     |
| [admin](./admin/README.md)                    | [web scraping](https://en.wikipedia.org/wiki/Web_scraping) and [password cracking](https://en.wikipedia.org/wiki/Password_cracking) |
| [recover password](./recover/README.md)       | [bad password recovery](https://www.owasp.org/index.php/Testing_for_weak_password_change_or_reset_functionalities_(OTG-AUTHN-009))  |
| [cookies](./cookies/README.md)                | [cookie manipulation](https://portswigger.net/kb/issues/00500b02_cookie-manipulation-stored-dom-based)                              |
| [signin](./signin/README.md)                  | [password brute forcing](https://www.owasp.org/index.php/Brute_force_attack)                                                        |
| [upload](./upload/README.md)                  | [mime type spoofing](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types)                                   |
| [hidden](./hidden/README.md)                  | [web scraping](https://en.wikipedia.org/wiki/Web_scraping) for info                                                                 |
| [page redirect](./page/README.md)             | [unsafe redirect](https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html)               |
| [media](./media/README.md)                    | [XSS](https://www.owasp.org/index.php/Cross-site_Scripting_(XSS))                                                                   |
