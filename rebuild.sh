#!/usr/bin/env bash

cd "`dirname "$0"`"
git pull
bundle install
bundle exec middleman build
