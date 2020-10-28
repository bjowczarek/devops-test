
upstream application {
    server {{ nginx.app1 }};
    server {{ nginx.app2 }};
}

server {
    listen  80;
    server_name {{ nginx.servername }};

    location / {
        proxy_set_header  Host             $host;
        proxy_set_header  X-Real-IP        $remote_addr;
        proxy_set_header  X-Forwarded-For  $remote_addr;
        proxy_pass http://application;

    }
}
