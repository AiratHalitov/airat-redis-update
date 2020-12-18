#!/bin/bash

# Author: Airat Halitov
# GitHub: https://github.com/AiratHalitov/airat-redis-update
# License: GPLv3

NP=$(nproc)

rm -rf redis-stable.tar.gz
rm -rf redis-stable

wget http://download.redis.io/redis-stable.tar.gz > /dev/null 2>&1

if [ -f redis-stable.tar.gz ]; then
    tar xvzf redis-stable.tar.gz > /dev/null 2>&1 && rm -rf redis-stable.tar.gz

    cd redis-stable
    make -j $NP > /dev/null 2>&1 && sudo make install > /dev/null 2>&1 && echo "Done!"
fi
