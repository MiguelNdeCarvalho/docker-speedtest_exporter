# docker-speedtest_exporter

## Description

This is the docker **multi arch** image of the [speedtest_exporter](https://github.com/nlamirault/speedtest_exporter) made by [Nicolas Lamirault](https://github.com/nlamirault)

## Running the Container

To run the container simply do this:

```bash
docker run -d \
  --name=speedtest_exporter \
  -p 9112:9112 \
  --restart unless-stopped \
  miguelndecarvalho/docker-speedtest_exporter
```

Then just acess the page `http://localhost:9112/` and you will have the page.

## Thanks
[Nicolas Lamirault](https://github.com/nlamirault)(for making the exporter).
