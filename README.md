# docker-opengamepanel
Docker version of OpenGamePanel Web interface

## Usage

Copy `.env.dist` and `docker-compose.override.yml.dist` and adapt your configuration
```bash
cp .env.dist .env
cp docker-compose.override.yml.dist docker-compose.override.yml
```

Finally, up the compose:
```bash
docker-compose up --detach
```
