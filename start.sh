#!/bin/sh

sh /opt/init.sh
if [ "$?" != "0" ]; then
    echo "run failed!"
    exit 1
fi

/usr/bin/supervisord
