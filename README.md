# Reference repo for running Gitea with docker

## Usage

1. In `nginx/sites-enabled/code.conf`, change all lines containing `code.example.com` to `subdomain.yourdomain.com`
2. In the `letsencrypt.sh` script change the line containing `code.example.com` to `subdomain.yourdomain.com`, and change `email@example.com` to your email.
3. In the `docker-compose.yml` file, change `ROOT_URL` to `https://subdomain.yourdomain.com/`. Do the same for `SSH_DOMAIN` but omit the `https://` and the `/` at the end.
4. Make `letsencrypt.sh` executable and run it to get your SSL cert: `sudo chmod +x ./letsencrypt.sh; sudo./letsencrypt.sh`