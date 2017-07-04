server {
    listen       80;
    server_name  localhost;

    location / {
        return 200 'nginx in pod ${podname}\n';
        add_header Content-Type text/plain;
    }
}
