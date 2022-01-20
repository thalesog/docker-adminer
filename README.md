<p align="center"><img alt="thalesog/Adminer" src="assets/logo.png" width="128px" /></p>

# <p align="center">Adminer<p>

<p align="center">
  <!-- <a href="https://circleci.com/gh/thalesog/docker-adminer">
    <img alt="build status" src="https://img.shields.io/circleci/build/gh/thalesog/docker-adminer/master?style=for-the-badge&color=blueviolet&logo=CircleCI">
  </a> -->
  <a href="https://www.npmjs.com/org/bull-board">
    <img alt="npm downloads" src="https://img.shields.io/docker/pulls/thalesog/adminer?style=for-the-badge&color=blueviolet&logo=Docker">
  </a>
  <img alt="open issues" src="https://img.shields.io/github/issues/thalesog/docker-adminer?style=for-the-badge&color=blueviolet"/>
  <a href="https://github.com/vcapretz/bull-board/blob/master/LICENSE">
    <img alt="licence" src="https://img.shields.io/github/license/thalesog/docker-adminer?style=for-the-badge&color=blueviolet">
  </a>
<p>
<p align="center">
  Docker image for <b><a href="https://github.com/vrana/adminer">adminer</a></b>.<br />
  Batteries included! 🔋<br />
<p>

# :page_with_curl: About

This docker image is available as an [automated build on the docker registry](https://hub.docker.com/r/thalesog/adminer/) and along the default adminer script, we have preconfigured **[Dracula theme](https://github.com/dracula/adminer)**, and a generated `permanentLogin` key.

The following databases are supported by this docker image:

- MySQL
- PostgreSQL
- SQLite
- SimpleDB
- ElasticSearch
- MongoDB
- MS SQL

Unsupported databases (TODO) :

- Oracle
- Firebird

# :rocket: Usage

## Quick start with `docker`

```bash
$ docker run --link=mysql:mysql -d -p 9091:80 thalesog/adminer
```

## Quick start with `docker-compose`

```yaml
version: '3.8'

services:
  adminer:
    container_name: adminer
    image: thalesog/adminer
    ports:
      - 9091:80
```

The above example exposes the **Adminer** webinterface on port `9091`, so that you can now browse to `localhost:9091`

This is a rather common setup following docker's conventions:

- `--link={database_container}:{alias}` will link a separate _database_container_ (MySQL, PostgreSQL, ...) to this container, thus make possible to connect to it via adminer with _alias_ hostname
- `-d` will run a detached instance in the background
- `-p {OutsidePort}:80` will bind the webserver to the given outside port
- `thalesog/adminer` the name of this docker image

# 🍰 Contributing

Please contribute using [GitHub Flow](https://guides.github.com/introduction/flow). Create a branch, add commits, and [open a pull request](https://github.com/thalesog/docker-adminer/compare).

# 📝 License

This project is under [MIT](https://github.com/thalesog/docker-adminer/blob/master/LICENSE) license.

#

<p align="center">
Developed with 💚 by <a href="https://github.com/thalesog">Thales Ogliari</a> 🇧🇷
</p>
