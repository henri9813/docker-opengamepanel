# docker-opengamepanel
Docker version of OpenGamePanel, that include:
- Web Interface
- Agent

## Web

This is the list of all environments variables that you *MUST DEFINE*:
```.env
OGP_SQL_HOST=mysql
OGP_SQL_USER=user
OGP_SQL_PASSWORD=password
OGP_SQL_DATABASE=database
```

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
