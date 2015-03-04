---
title: Virtual machines in 5 clicks - Virtkick basics
author: Mirek Wozniak
role: I do marketing and bits of coding @Virtkick.
email: wozmir@virtkick.io
---

We say that Virtkick's dead-simple to use. Today we've got a proof.
Here's a short, non-technical guide to Virtkick. Let's get started!


### Downloading VirtKick 

If you're running on CentOS just go to your terminal and enter: 

```
yum install https://download.virtkick.io/latest.rpm
```

Almost the same for openSUSE:

```
zypper install https://www.virtkick.io/download/latest.rpm
```

Then just go to **http://yourserverip:3000** (e.g. http://localhost:3000) and skip on to the next section: [running the machines](#running).

As for the **other environments**, clone the repository from GitHub and then run Virtkick from there. Here's how to do it in Ubuntu:

```
sudo apt-get install git
git clone https://github.com/virtkick/virtkick-starter.git
cd virtkick-starter
./virtkick-start -dim
```
And then go to **http://yourserverip:3000** as well.

###Running the machines <a name="running"></a>

Here's a simple screencast showcasing what you will see after going to http://yourserverip:3000. 

I start a machine, check out the console, have a look at the settings and finally put it back to sleep.

<div class="video-container">
  <iframe src="https://www.youtube.com/embed/KsCZMz4K6IY" frameborder="0" width="560" height="315"></iframe>
</div>

That' all you need - go and spin up those VMs: <a class="btn btn-yellow ga-demo" href="https://alpha.virtkick.io/" target="_blank">Try the demo</a>

If you need more technical details, [everything's at GitHub](https://github.com/virtkick/virtkick-starter) and if there's anything more you'd like to know about Virtkick, [drop me a line](mailto:mirek@virtkick.com) or leave a comment below!



