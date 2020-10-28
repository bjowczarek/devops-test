server {
    listen  80;
    root {{ nginx.docroot }};
    server_name {{ nginx.servername }};
    index index.nginx-debian.html;
    location / {
        set_real_ip_from   {{ nginx.balancer }};
        proxy_set_header   X-Forwarded-For $remote_addr;
        proxy_set_header   Host $http_host;
        proxy_pass   http://localhost:3000;
    }

}
