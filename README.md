Ansible Role: cfssl-docker
=========

[![Build Status](https://travis-ci.org/tekniqueltd/ansible-role-cfssl-docker.svg?branch=master)](https://travis-ci.org/tekniqueltd/ansible-role-cfssl-docker)

Configures and runs a cfssl api server. Features include:

- Runs entirely in docker containers, managed by docker-compose
- NGINX reverse proxy with optional TLS
- Optional MySQL server for certificate storage
- Uses [tekniqueltd/cfssl](https://github.com/tekniqueltd/cfssl) - a fork of cfssl with built-in goose SQL migrations

Requirements
------------

### Local

- ansible 2.3.0+
- docker-compose 1.14.0+
- python 2.7+

### Remote

- docker 17.05+
- docker-compose 1.14.0+
- python 2.7+

Note: You can use the `tekniqueltd.docker` role to install docker + docker-compose. See _Example Playbook_.

Role Variables
--------------

See `defaults/main.yml` for all variables.

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: tekniqueltd.docker } # Optional
         - { role: tekniqueltd.cfssl-docker }

License
-------

MIT

Author Information
------------------

Teknique Ops Team - <ops@teknique.com>
