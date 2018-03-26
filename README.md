# Curator in docker

This is dockerized version of [Elasticsearch curator][curator],
tool to manage time-based indices. 

## S3 Repo

This image is based on `bobrik/docker-curator` image and extends it
with creation a [S3 repository][s3-repo] for Elasticsearch before running curator

S3 repository can be configured with the following variables:
```
S3_REPO_ENABLE
S3_REPO_NAME
S3_BUCKET
S3_AWS_REGION
S3_AWS_KEY_ID
S3_AWS_SECRET
```

## Usage

Image entrypoint is set to curator script, so just run the image:

```
docker run --rm dmibay/docker-curator:latest --help
```

Pick whatever version you need.

**Note** Paths to the Curator config file and action file must be set in `CONFIG_PATH` and `ACTIONS_PATH` 
variables respectively. 

[curator]: https://www.elastic.co/guide/en/elasticsearch/client/curator/5.4/index.html
[s3-repo]: https://www.elastic.co/guide/en/elasticsearch/plugins/5.6/repository-s3-repository.html
