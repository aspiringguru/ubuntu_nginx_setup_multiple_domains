server {
        listen 80;
        listen [::]:80;

        root /var/www/demo1.findthenextflightoutofhere.com/html;
        index index.html;

        server_name demo1.findthenextflightoutofhere.com;

        location / {
                try_files $uri $uri/ =404;
        }
}
