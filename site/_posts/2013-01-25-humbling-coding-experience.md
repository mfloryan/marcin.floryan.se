---
layout: blog
title: Humbling coding experience
date: 2013-01-25 08:07:52.000000000 +00:00
author: Marcin
type: post
tags: legacy code
---

Yesterday I’ve had a rather humbling coding experience. I didn’t expect it to come directly from the codebase I was working with though.

The work I was doing over the last couple of days involved integrating a brand new system written in C# with a legacy VB.Net application. Yes, Visual Basic. It wasn’t something particularly difficult nor something we’ve not done before. Of course the legacy system (as they do) have gathered its fair share of abuse and disgruntlement at how complicated it is, how poorly written, how difficult to understand and yes, with no test coverage. Even full access to the source code didn’t seem to have helped much.

Unsurprisingly perhaps the integration didn’t work. Although many similar examples proved it should work my case just seemed particularly stubborn. Yet nobody was too surprised, after all I was dealing with “that legacy system”. So we’ve invested a fair share of time digging thought the overly verbose guts of the beast, we debugged, stepped over, tweaked and tinkered. We thought we had the problem pinned down and eventually managed to get a separate, isolated test pass. However, it still didn’t work in the new system.

Much as we’d throw our hands in disbelief and defeat the two systems stubbornly refused to work until eventually the lightning stuck. It was our new system that was wrong; we were passing some arguments swapped around! A moment of silence; a blush of embarrassment and time for some reflection;

Working with a legacy system, one that you don’t understand well and that has no good test coverage or clean usage examples is dangerous. The danger lies in your attitude – mainly the lack of trust that it will do its job correctly. And if there is no trust it’s just too easy to blame the poor old thing for all the mistakes and problems that happen even if the mistakes are made by the otherwise smug developer trying to tackle it. A truly humbling experience;

_Post Scriptum_

Later last night I also found great couple of tweets from [Woody](https://twitter.com/WoodyZuill) that complete this lesson for me:

[blackbirdpie url="https://twitter.com/WoodyZuill/status/294456307455508481"]

[blackbirdpie url="https://twitter.com/woodyzuill/status/294536668478832641"]

 
