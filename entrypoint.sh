#!/bin/bash

if [ "$UID" != "1000" ]; then
    usermod -u $UID mkdocuser
fi

if [ "$GID" != "1000" ]; then
    usermod -g $GID mkdocuser
fi

exec su -s /bin/bash -c "mkdocs serve --dev-addr 0.0.0.0:8000" -- mkdocuser
