# docker-s3cmd

```
# upload files to digitalocean space
docker run --rm \
  -v $(PWD):/s3:ro \
  -e ACCESS_KEY=... \
  -e SECRET_KEY=... \
  -e HOST=ny3.digitaloceanspaces.com \
  -e HOST_BUCKET=%(bucket)s.nyc3.digitaloceanspaces.com \
  -e REGION=US \
  choffmeister/s3cmd \
  put --recursive --acl-public "/s3/*" "s3://bucket"
```
