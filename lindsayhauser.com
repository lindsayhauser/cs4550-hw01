# This config file is based off of Nat Tuck's lecture notes:
# http://www.ccs.neu.edu/home/ntuck/courses/2018/09/cs4550/notes/01-welcome/notes.html
server {

        listen 80;
        listen [::]:80;

        root /home/lindsayhauser/www/lindsayhauser.com;

        index index.html;

        server_name lindsayhauser.com www.lindsayhauser.com;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}
