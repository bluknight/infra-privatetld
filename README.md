# infra-privatetld
This project builds a container-ized private Top Level Domain infrastructure using the [PowerDNS](https://github.com/PowerDNS/pdns) and [PowerDNS-Admin Legacy](https://github.com/PowerDNS-Admin/PowerDNS-Admin) projects, with [MariaDB](https://github.com/MariaDB/server) being used for a backend.  While this is built for personal use and for a internal "darknet" with friends, I want to make the basic build available for all to use as open infrastructure.

Project is [MIT-licensed](LICENSE), and I can't emphasize enough that it's provided AS-IS.  However, if you have a bugfix or really think I can help you fix or figure out something, issues and PRs are accepted, as long as you're ok with your own contributions being similarly licensed.  All outside code and projects utilized may have their own licenses -- YMMV.

This project was built for and tested on [Podman](https://podman.io/), deployed on a [Debian](https://debian.org/) VM running the current [testing distribution](https://www.debian.org/releases/testing/) -- at the time of this commit, [trixie](https://www.debian.org/releases/trixie/).

## Usage
TODO - I'm still building this!

## Reference Material
This is a slush-pile of various reference documents I'm using at the time -- expect it to be cleaned up at some point in the process.
* [PowerDNS Docker Readme](https://github.com/PowerDNS/pdns/blob/rel/auth-4.9.x/Docker-README.md)
* [MariaDB documentation on Docker Hub](https://hub.docker.com/_/mariadb)
* [MariaDB Docker github repo](https://github.com/MariaDB/mariadb-docker)
