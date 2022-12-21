#!/bin/sh
# works
# Remember to run 'caffeinate'
# Upgrade npm. Trying to install globally again upgrades itself. Sometimes needs done twice for major ug
# Upgrade n
# Update Node to latest stable release with n

npm i -g npm && \
npm i -g npm && \
npm up -g n && \
n stable
