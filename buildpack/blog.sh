#!/bin/env bash

source define.sh

tips "Init from python repo."

pip install liquidluck
git clone https://coding.net/yufeili/yufeiminds.git blog

cd blog
liquidluck server
