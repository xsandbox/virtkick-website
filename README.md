# VirtKick website

[![GPA](https://img.shields.io/codeclimate/github/virtkick/virtkick-website.svg)](https://codeclimate.com/github/virtkick/virtkick-website)
[![Build status](https://img.shields.io/travis/virtkick/virtkick-website.svg)](https://travis-ci.org/virtkick/virtkick-website)
[![Dependencies status](http://img.shields.io/gemnasium/virtkick/virtkick-website.svg)](https://gemnasium.com/virtkick/virtkick-website)

This is a website of VirtKick, a 1-click cloud management center.
It's built with [Middleman](http://middlemanapp.com/).
Visit [https://www.virtkick.io/](https://www.virtkick.io/) to preview.

The sources are licensed under GNU AGPL, see [LICENSE.md](https://github.com/virtkick/virtkick-website/blob/master/LICENSE.md).

## Requirements

- [RVM](https://rvm.io/)
- Ruby 2.1 from RVM
- Linux or Mac

### One time setup

```
rvm install 2.1
rvm use 2.1 --default
gem install bundler
yaourt -S optipng pngcrush advancecomp # or apt-get install, or whatever
```

### Development

```
bundle install
bundle exec middleman server # in a new tab
xdg-open http://0.0.0.0:4567/
```

### Deployment

```
bundle exec middleman build
```

