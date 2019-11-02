# Blackfire Player in Docker

[Blackfire Player](https://blackfire.io/docs/player/index) is a powerful Web Crawling, Web Testing, and Web Scraper application. 

## Usage 

List all available commands:
```
docker run --rm player list
```

Run scenario from mounted file:
```
docker run -v `pwd`:/app scyzoryck/blackfire-player run scenario.bkf -v
``` 

## Links:
[DockerHub](https://hub.docker.com/r/scyzoryck/blackfire-player/)

