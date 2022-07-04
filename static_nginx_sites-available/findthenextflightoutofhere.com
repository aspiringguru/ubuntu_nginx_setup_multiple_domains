server {
        listen 80;
        listen [::]:80;

        root /var/www/findthenextflightoutofhere.com/html;
        index index.html;

        server_name findthenextflightoutofhere.com www.findthenextflightoutofhere.com;

        location / {
                try_files $uri $uri/ =404;
        }
}
