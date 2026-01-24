---
layout: blog
title: Hours of remaining effort
date: 2010-07-19 23:46:34.000000000 +00:00
author: Marcin
type: post
tags: [agile, management]
---

Admittedly it was [@PDarral](http://twitter.com/PDarrall) who pointed this out to me. I was never comfortable with the idea myself either. It's **sprint burndown charts** that use " **Hours of remaining effort**" on the vertical axis.

The Scrum alliance itself give the following [definition](http://www.scrumalliance.org/articles/39-glossary-of-scrum-terms#1116) for sprint burndown chart:

> A sprint burndown chart (or "sprint burndown graph") depicts the total task hours remaining per day. This shows you where your team stands regarding completing the tasks that comprise the product backlog items that achieve the goals of the sprint. The X-axis represents days in the sprint, while the Y-axis is effort remaining (usually in ideal engineering hours).

Mike Cohn too, [gives an example](http://www.mountaingoatsoftware.com/scrum/sprint-backlog), where effort remaining is tracked in hours. Scrum for Team System (STS) for Microsoft's TFS provides a picture along the similar lines:

[![](/assets/images/2010/07/scrum-burndown-chart-tfs.png "scrum-burndown-chart-tfs")](/assets/images/2010/07/scrum-burndown-chart-tfs.png)

Having taught physics for a while and being an engineer I can't help myself to think a graph like this ultimately represents **time vs time**. So long as we don't approach the speed of light time goes at a pretty constant rate therefore the only correct line in the graph would be a straight line.

I know, it's not clock hours, it's remaining effort (ideal hours) and we are tracking our true progress against estimated time therefore not having a straight line should be OK. Still, to maintain the burndown chart we have to track progress and with a graph like that is needs to be _progress in hours_. Yet as people who grow and learn a particular perception of time we use clocks to track those hours. So when we record time we usually won't think "Well, today in my 8 hour day I did only 4.5 ideal hours of my estimate". It is just too easy to game the system as well "If I don't tweak the numbers it will look as if I only did 2 hours yesterday". For good, confident Scrum teams this will not be an issue. For forming and storming teams the temptation might be too big. It also provides a temptation for management (even though sprint burndown chart is solely a tool for the team) to say "You guys have only 5 extra hours left it seems, with a bit of over time you'll be done on time".

My answer to the problem is simple - although it requires some more discipline in analysis - break your stories down and track story points also in the sprint burndown chart.

With these thoughts I was glad to listen to [Kevlin's Henney](http://www.two-sdg.demon.co.uk/curbralan/kevlin.html) [talk at NDC 2010](http://streaming.ndc2010.no/tcs/?id=1272299E-1DD1-4C11-B7A3-EBDE5B11A5B7) who made some further remarks along the same lines.

- Time against time is a utilisation graph - not what we meant to be plotting
- We end up logging the amount of work we did - so just proved we are using 7 hours of the day as we said we would
- Kevlin is against plotting time against time at all because it gives false precision
- With 2 weeks iteration there are only 8 points of reference (8 working days) - not statistically significant for hourly estimates
- **Visualise items of work left to complete**

I'm glad Jeff Sutherland also [recommends burning story points](http://scrum.jeffsutherland.com/2009/04/sprint-burndown-by-hours-or-by-story.html).
