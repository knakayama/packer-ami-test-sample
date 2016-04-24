#!/usr/bin/env bash

/usr/local/bin/bundle install --path=vendor/bundle
/usr/local/bin/bundle exec rake 'spec:localhost' -t

# Local Variables:
# mode: Shell-Script
# sh-indentation: 2
# indent-tabs-mode: nil
# sh-basic-offset: 2
# End:
# vim: ft=sh sw=2 ts=2 et
