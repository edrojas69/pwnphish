#!/bin/bash

cat <<EOF
{
  "admin_server": {
    "listen_url": "0.0.0.0:3333",
    "use_tls": true,
    "cert_path": "gophish_admin.crt",
    "key_path": "gophish_admin.key"
  },
  "phish_server": {
    "listen_url": "0.0.0.0:80",
    "use_tls": false,
    "cert_path": "example.crt",
    "key_path": "example.key"
  },
  "db_name": "mysql",
  "db_path": "${DB_USER}:${DB_PASS}@(db.${DOMAIN}:3306)/${DB_NAME}?charset=utf8&parseTime=True&loc=UTC",
  "migrations_prefix": "db/db_",
  "contact_address": "",
  "logging": {
    "filename": "",
    "level": ""
  }
}
EOF
