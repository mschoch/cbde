#!/bin/sh

sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo add-apt-repository -y ppa:george-edison55/precise-backports
sudo apt-get update -qq
sudo apt-get install g++-4.8 libsnappy-dev zlib1g-dev libbz2-dev cmake-data cmake -qq
export CXX="g++-4.8" CC="gcc-4.8"
