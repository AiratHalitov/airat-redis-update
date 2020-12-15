#!/bin/bash

NP=$(nproc)

rm -rf redis-stable.tar.gz
rm -rf redis-stable

wget http://download.redis.io/redis-stable.tar.gz

if [ -f redis-stable.tar.gz ]; then
    tar xvzf redis-stable.tar.gz && rm -rf redis-stable.tar.gz

    cd redis-stable
    make -j $NP && sudo make install && echo "Done!"
fi
