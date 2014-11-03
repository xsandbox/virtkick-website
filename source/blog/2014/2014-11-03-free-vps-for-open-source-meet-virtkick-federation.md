---
title: Free VPS for open source. Meet VirtKick Federation
author: Damian Nowak (Nowaker)
role: Co-founder, Ruby Developer
email: nowaker@virtkick.io
---

Last week was great for VirtKick Team. We debuted on Hacker News with our
[Show HN: VirtKick - your self-hosted DigitalOcean](https://news.ycombinator.com/item?id=8527185) and got 200+ votes.
A few hours later, we got an invitation for a final interview for [Techstars Cloud](http://www.techstars.com/cloud/).
Finally, several sponsors have already contacted us and offered help in securing the development of VirtKick.
This encouraged us to reveal our further plans.

<!--more-->

Open source is quite an awesome place to be in.
That's because of companies like [GitHub](https://github.com/), [Travis CI](https://travis-ci.org/),
[Bugsnag](https://bugsnag.com/blog/bugsnag-loves-open-source), [Status.io](http://kb.status.io/account/oss-sponsorship)
who provide outstanding services for open source projects. Not to mention
[Engine Yard](https://www.engineyard.com/community/open-source/),
[Stripe](https://stripe.com/blog/stripe-open-source-retreat),
[DigitalOcean](https://www.bountysource.com/teams/rvm/backers) who support them financially.
We want to join this elite group but also take you, individual open source supporters, to the party.

Our next big goal is federated VPS for open source. Or SETI@home for virtual servers, if you will.
You're voluntarily donating free resources on your computer or server to the federation.
Then developers spin up their virtual machines or Docker containers and test things out with Travis CI builds.

<div class="blogpost-federation text-center" style="margin-top: 40px; margin-bottom: 40px">
  <img src="/img/federation/federated-vps.png" alt="VirtKick Federation" style="width: 100%; max-width: 300px; " />
  <h3>We accept API calls from developers and proxy them to users.</h3>
</div>

The most popular use case is unit testing Dockerfiles, Chef cookbooks, Ansible playbooks, and so on.
An automated build provisions a container/machine, then runs unit tests against it.
You already love .travis.yml, don't you? VirtKick will hook up.

There's so many things that can be done with it - the sky's the limit.
VirtKick doesn't limit your freedom to choose a kernel or a distro.
Testing grsec kernel on Arch Linux to see if all works after recent upgrade with `pacman -Syu`?
Why not!

Have no fear - VirtKick won't take your resources without asking.
VirtKick Federation will be a separate module and won't be included in VirtKick by default.
We'll also protect your home network with appropriate iptables and ebtables rules, so VMs can't access your
premises. And if you're still worried, you'll have an option to disable the network altogether.

It's a damn whole lot of work - we need your support to make it happen.
Please consider contributing in our [crowdfunding campaign](https://www.indiegogo.com/projects/virtkick-take-cloud-back),
spreading the word about it or hacking our [code base](https://github.com/virtkick). Thanks.
