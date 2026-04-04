---
layout: blog
title: How many seconds in a day?
date: 2012-10-11 22:37:45.000000000 +00:00
author: Marcin
type: post
tags: [date, JavaScript]
---

**TL;DR;** If you’re ever tempted to write your own date handling – don’t. Unless you’re [Jon Skeet](https://stackoverflow.com/users/22656/jon-skeet) you’re usually better off using existing libraries like [JodaTime](https://joda-time.sourceforge.net/) or [NodaTime](https://code.google.com/p/noda-time/)

![](/assets/images/2012/10/The_Persistence_of_Memory.jpg "The\_Persistence\_of\_Memory") Unfortunately I recently didn’t resist the temptation. If you have ever worked with JavaScript and [Dates](https://developer.mozilla.org/en-US/docs/JavaScript/Reference/Global_Objects/Date) you know how incredibly painful it can be. _I mean, who in their right mind would use a zero-based month numbers?_ (If you happen to know a good reason for this design choice I would love to understand it). What we needed to do was to calculate the number of days between two given dates. Sounds simple enough, even with the cumbersome Date interface you can quickly work out that it should be possible to get the number of milliseconds between two dates and turn that into a number of days.  
The code looked something like this:

```
var firstDate = new Date(2012,9,12);
var lastDate = new Date(2012,9,20);

var difference = lastDate.getTime() - firstDate.getTime();
var dayInMilliseconds = 1000 * 60 * 60 * 24;

var days = difference / dayInMilliseconds;
```

It’s all pretty straight forward until you actually start testing the code and happen to enter slightly different dates. Suppose we take the 29<sup>th</sup> of October (yes, the 9<sup>th</sup> month in JavaScript). Suddenly the number of days starts looking a bit odd. Turns out that our initial assumption about the number of milliseconds in a day is mostly correct. Only sometimes it isn’t. This just happened to have been written in the UK where we observe [DST](https://en.wikipedia.org/wiki/Daylight_saving_time), which ends on the 28<sup>th</sup>

The quick solution could be to include the timezone offsets like this:

```
var firstDate = new Date(2012,9,27);
var lastDate = new Date(2012,9,29);

var difference = lastDate.getTime() - firstDate.getTime() -
                 (lastDate.getTimezoneOffset() - firstDate.getTimezoneOffset()) * 60 * 1000;
var dayInMilliseconds = 1000 * 60 * 60 * 24;

var days = difference / dayInMilliseconds;
```

It’s probably a slightly better solution. That is until we discover there is this thing called a [leap second](https://en.wikipedia.org/wiki/Leap_second).

So next time I’m tempted to write any date handling code in JavaScript I’ll first turn to StackOverflow and see if there’s already [something out there](https://stackoverflow.com/questions/802861/javascript-date-manipulation-library).
