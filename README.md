# Urbica PGmigrate

[![Build Status](https://travis-ci.org/urbica/docker-pgmigrate.svg?branch=master)](https://travis-ci.org/urbica/docker-pgmigrate)

`urbica/pgmigrate` is a Docker image for [Yandex PGmigrate](https://github.com/yandex/pgmigrate).

## Usage

```shell
docker run -it \
  --rm \
  --network <DATABASE-CONTAINER-NETWORK> \
  -v $(pwd)/migrations:/migrations \
  urbica/pgmigrate -d /migrations -t latest migrate
```
