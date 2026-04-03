---
layout: blog
title: Pairing with @jbrains
date: 2010-11-24 23:37:57.000000000 +00:00
author: Marcin
type: post
tags: agile
---

[![](/assets/images/2010/11/5207739664_13cce5e908_m.jpg "5207739664\_13cce5e908\_m")](https://www.flickr.com/photos/agileinaction/5207739664/)For the last three days our crew at the [Energy Lab](https://www.energizedwork.com/ "Energized Work") has been working on a small internal project with guest appearance from [J. B. Rainsberger](https://www.jbrains.ca/). There are always plenty of opportunities to learn in the lab and pairing with [jbrains](https://twitter.com/jbrains "@jbrains on twitter") was certainly such occasion.

I really enjoyed the steady heartbeat of frequent local git check-ins through small steps persistently taking us in the direction of the next slice to check into the project svn repository. Each step always in the right direction providing a drop of satisfaction and encouragement to keep going together with confidence that retracing our steps, if needed, would be very easy. A dozen check-ins in an hour felt like a good start. Indeed it turned out right on the money. When an unexpected bug surfaced we were able to identify, through [git bisect](https://www.kernel.org/pub/software/scm/git/docs/git-bisect.html) command, the right commit and the single offending line very quickly.

The bug was also a stark reminder to always test at least three cases: **zero, one, many** and J.B. showed how this simple rule is applicable to all the different types of tests.

I also had a good lesson of how to write better tests, tests that are specific (and talk about visitors or readers not just “users”) and focused on just one piece of functionality – thus less prone to being brittle. Too bad we didn't get a chance to unit test our views, but turns out not to be so simple with grails.

On top of that, a few glimpses of really clean code and effective refactorings through really small steps, and an incidental hint “_Shift+F10_” uttered whenever I would try to reach for the mouse made it a fun, valuable and thoroughly enjoyable learning experience.

Above all, J.B. is a nice guy to pair with as Simon succinctly put

[![](/assets/images/2010/11/simon-tweet-update.png "simon-tweet-update")](https://twitter.com/#!/energizr/status/7076945170800640)

All that is left to do now is practice, practice and practice.
