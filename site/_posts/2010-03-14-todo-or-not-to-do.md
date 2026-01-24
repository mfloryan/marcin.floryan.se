---
layout: blog
title: TODO or not to do
date: 2010-03-14 13:19:50.000000000 +00:00
author: Marcin
type: post
tags: [code, learning, refactoring]
---

```
//TODO: Write this post
```

I don't think there is a large code-base that has been worked on for a while, in any common language, that would not have _some_ TODOs scattered around the code. In fact there is dedicated functionality in popular IDEs (Visual Studio included, and ReSharper adds on top) to ease tracking of TODOs in code.

Some time ago my team have been doing a code review and have actually had a luxury of a week dedicated solely to refactoring (a rare treat I would think for most projects). Part of that exercise was revisiting the TODOs scattered around. We got rid of all, and it most cases simply by deleting the comment. After all, functionally the code was complete.

I started pondering why TODOs appeared there in the first place and found two reasons straight away (or at least two reasons that people would usually give):

- I didn't know how to do it;
- I didn't have time to do it;

My take is, TODOs are **_a learning opportunity_**

```
//TODO: Implement this using the FetchStategy
//TODO: Confirm what is the maximum length here
```

and also, in context of Lean software development, they could be classified as inventory and thus _**waste**_. Finally if they simply express functional requirements

```
//TODO: Get this value from the user
```

or non-functional requirements

```
//TODO: Improve performance of this method
```

they should not be TODOs at all as there are better places (on the backlog) to capture this information.

I have now decided to accelerate my learning (both about technology and project) and never to put another TODO in code. Instead, allocate time immediately (as I am never [too busy](http://www.scottberkun.com/blog/2010/the-cult-of-busy/)), and resolve the problem at hand. Try it, it may strangely increase your productivity.
