#!/usr/bin/env bash

echo "This is the OGP credentials:"
cat /root/ogp_user_password

/etc/init.d/ogp_agent start

tail -f /dev/null
