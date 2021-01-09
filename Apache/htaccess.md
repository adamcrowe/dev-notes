# Holding Page
* [Temporary Site Redirect for Visitors during Site Updates](https://perishablepress.com/temporary-site-redirect-for-visitors-during-site-updates/)

In... /home/mmp/public_html/review.medicalpublishing.co.uk/.htaccess

```sh
# Down for maintenance
<Limit GET POST PUT>
	Order deny,allow
	Deny from all
	Allow from 86.180.232.61 # developers IP
</LIMIT>
ErrorDocument 503 /holding-page/index.html
<Files /holding-page/index.html>
	Order allow,deny
	Allow from all
</Files>
```

In... /home/mmp/public_html/review.medicalpublishing.co.uk/holding-page/.htaccess

```sh
<Files index.html>
	Order allow,deny
	Allow from all
</Files>
```
