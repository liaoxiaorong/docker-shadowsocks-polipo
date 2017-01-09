#!/bin/bash
supconf=/etc/supervisor/conf.d/supervisord.conf

if [ ! -n "$SERVER_ADDR" ]; then
    echo "SERVER_ADDR can not be null"
    exit 1
else
    sed -i "s,SERVER_ADDR,$SERVER_ADDR,g" $supconf
fi

if [ ! -n "$SERVER_PORT" ]; then
    echo "SERVER_PORT can not be null"
    exit 1
else
    sed -i "s,SERVER_PORT,$SERVER_PORT,g" $supconf
fi

if [ ! -n "$PASSWORD" ]; then
    echo "PASSWORD can not be null"
    exit 1
else
    sed -i "s,PASSWORD,$PASSWORD,g" $supconf
fi
