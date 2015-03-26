#!/bin/env bash

source define.sh

tips "Docker run PostgreSQL."
docker run -d -e POSTGRES_USER=odoo -e POSTGRES_PASSWORD=odoo --name db postgres

tips "Docker run Odoo."
docker run -p 127.0.0.1:8069:8069 --name odoo --link db:db -t odoo
