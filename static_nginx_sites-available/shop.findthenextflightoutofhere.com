server {
        listen 80;
        listen [::]:80;

        root /var/www/shop.findthenextflightoutofhere.com/html;
        index index.html;

        server_name shop.findthenextflightoutofhere.com;

        location / {
                try_files $uri $uri/ =404;
        }
}
