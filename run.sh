#! /bin/bash

# The use of this script should be temporary.
# The reason is that fail2ban cannot actually be started in foreground mode AND load the configured jail at the same time
# see: https://github.com/fail2ban/fail2ban/issues/1107
# The first post is still relevant.
# With fail2ban evolution, we should be able to to replace this scrip with a CMD or ENTRYPOINT in the Dockerfile

/usr/local/bin/fail2ban-client -f start && tailf /var/log/fail2ban.log
