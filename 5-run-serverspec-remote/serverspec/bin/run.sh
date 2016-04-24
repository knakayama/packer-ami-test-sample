#!/usr/bin/env bash

LOG="packer.log"

host_ip="$(grep -F '[DEBUG] TCP connection to SSH ip/port failed: dial tcp' "$LOG" \
  | grep -oE '([0-9]+\.){3}[0-9]{1,3}' \
  | sort \
  | uniq \
  | head)"
priv_key="${HOME}/.ssh/My-CM.pem"

cd "serverspec" \
  && bundle exec rake "host=${host_ip}" "priv_key=${priv_key}" -t

# Local Variables:
# mode: Shell-Script
# sh-indentation: 2
# indent-tabs-mode: nil
# sh-basic-offset: 2
# End:
# vim: ft=sh sw=2 ts=2 et
