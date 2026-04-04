---
layout: blog
title: Thinking in six hats
date: 2011-03-22 12:15:57.000000000 +00:00
author: Marcin
type: post
tags: [mindmap, teams, testing]
---

The project was going well, at least as far as approach to analysis and development was concerned. We still haven’t agreed on a sensible approach to testing though. The issue has repeatedly been raised in retrospectives and has always sparked a heated debate as strong and, not always compatible, opinions were held. It was high time to tackle the challenge and agree on a sensible solution.

{% figure caption: "Drawing from Bill Jarrard" %}
[![](/assets/images/2011/03/six-hats-men.png "six hats men")](https://www.fuzz2buzz.com/en/node/1568)
{% endfigure %}

I have used Edward De Bono’s _[6 Thinking Hats](https://en.wikipedia.org/wiki/Six_Thinking_Hats "Six thinking hats on Wikipedia") technique_, based on De Bono's [book](https://amzn.to/hCkTw5 ), before  but never directly applied in context of software development. Nevertheless, it seemed like a tool well worth trying, particularly given the emotions were running high.

The idea is based on the premise that our brain has different ways in which it operates and they can yield different outcomes. There are 6 hats, each with a different colour (white, red, black, yellow, green and blue) representing different thinking processes (facts & information, feelings & emotions, negative, positive & optimistic, creativity, the big picture). The team works through a problem by successively and explicitly applying different hats in their thinking. Sometimes real colourful hats are worn but usually just a motion of “selecting a colour” is sufficient. Depending on the problem at hand, its structure and required focus, the hats are applied in specific order creating a program (such as generating ideas, identifying solutions, process improvements, solving problems). For example, the following sequence of colours: Blue, White, Green, Yellow, Black, Red may be good for choosing between alternatives.

In this particular case we were hoping to improve our process with regards to testing so the following sequence seemed appropriate: Red, White, Yellow, Black, Green, Red; In each “round” people were writing their thoughts on sticky notes and we then assembled and reviewed them together. We have previously prepared a list of different types of testing we thought we were doing:

- unit testing
- integration testing
- UAT testing
- Web UI testing
- pre-production testing
- cross-browser sanity testing
- system testing
- exploratory testing

You might say this classification is not clear and perhaps overlapping. I agree but it didn’t matter as in this particular case these were de-facto different activities and understood as such by the team (although what each of them was exactly supposed to achieve was not that clear). The goal was to establish a shared understanding of what they meant and if the structure needed changing.

We started with a swoop of people’s emotions (a red hat, a rather quick one) to clear the air. Then, we went on to gather information and facts (white hat), collected thoughts on positive and optimistic aspects (yellow hat) and then looked at things critically (black hat). Finally we generated some new ideas and insights (green hat) and applied the red hat again to gauge the emotions. The session was fairly short and fast paced so we were all somewhat drained at the end but _people were clearly happier_ having gone through the exercise.

[![](/assets/images/2011/03/six-thinking-hats-testing-mindmap-150x150.png "six-thinking-hats-testing-mindmap")](/assets/images/2011/03/six-thinking-hats-testing-mindmap.png)Here is a mind-map summary of the session with many of the thoughts captured. It’s not as relevant though as the outcome the session had for the team. We have finally felt we were on the same page with most concepts; we have surfaced many good ideas and advantages but also fears, worries and problems. Thinking about only one aspect at a time we were able to break out of the vicious circle fuelled by emotions and different implicit mindsets.

In the next retrospective we were able to put together a plan of concrete actions to improve the situation that got buy-in from the whole team. Subsequent iterations have seen many of these actions implemented and as the result, the team was happier and we were able to improve quality of our system.

The 6 thinking hats allowed us to move forward in a way that other retrospective techniques before couldn't.
