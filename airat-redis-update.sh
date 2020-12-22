#!/bin/bash

# Author: Airat Halitov
# GitHub: https://github.com/AiratHalitov/airat-redis-update
# License: GPLv3

NP=$(nproc)

rm -rf redis-stable.tar.gz
rm -rf redis-stable

wget -q http://download.redis.io/redis-stable.tar.gz

if [ -f redis-stable.tar.gz ]; then
    tar xzf redis-stable.tar.gz && rm -rf redis-stable.tar.gz

    cd redis-stable
    make -j $NP &> /dev/null && sudo make install &> /dev/null && echo "Done!"
fi
