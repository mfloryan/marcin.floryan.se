---
layout: blog
title: Stop writing acceptance criteria
date: 2014-04-30 22:39:23.000000000 +00:00
author: Marcin
type: post
tags: [agile, code, testing]
---

Come a [User Story](https://agileatlas.org/articles/item/user-stories). A lightweight expression of a feature or user requirement. Often referred to as a "[placeholder for conversation](https://xprogramming.com/articles/expcardconversationconfirmation/)". Bread and butter of every single "agile" team I have seen and possibly many not-so-agile teams too.

A card with one sentence on the front and usually a list of "_acceptance criteria_" at the back... or a card with a sentence at the front and ... **a number**. A subtle pointer to an electronic card tracking system where conversations are substituted with mini-specifications, given-when-then wish lists or even detailed test-cases.

So what should these "acceptance criteria" be, and, more importantly, who should write them? In principle it doesn't matter. There is a cross-functional, title-free team of people who self-organise and work it out.

In practice, more often than not, there is BA, a QA and some DEVs. Each fairly attached to their role and rather shy of stepping across the boundary.

Why do we need "acceptance criteria"? We want to know what needs doing, when the work on a story is completed, and to know what to test, naturally. So we ask the BA to write the acceptance criteria as part of specifying the story. Developers use these criteria to do just enough and finally QA will use them to validate if the work has been done correctly (rant about inspection deferred to another post). In a world of rational, predictable and certain software development this works.

The real world of software development is not rational, is not predictable and far from certain. Most of the acceptance criteria written up-front will not survive the contact with the implementation. Most of the software written will not fully oblige to the set of pre-imposed constraints and good QAs, having got their hands on the real thing, will find corner cases that couldn't even have been thought of up-front.

**This can go in one of two ways.**

The team sees what's going on, makes the mental shift from the utopian into the real world and starts collaborating on the stories. They shift to more conversations. The list of criteria becomes a fluid, temporal reflection of the current understanding and gets encoded in examples and automated tests rather than in the tracking system or even on paper. Problem solved.

**You can keep writing acceptance criteria.**

There is also the other way, perhaps more common (judge by your own experience). One were we refuse to accept that we might be engaging in a fuzzy, unpredictable, uncertain endeavour. The topic of acceptance criteria becomes increasingly a subject of many lengthy conversations that lead to nothing. Eventually the BA claims ownership and insists on writing them down (or are told to do so, or can't see an alternative). Developers mostly ignore what's written and code what they think is right (which is either wrong or right, welcome confirmation bias). Testers go back to the list and diligently try to validate behaviours. And they raise defects. A written list, instead of being a helpful tool in understanding and development, becomes a divisive artefact that isolates the roles and moves people further apart. Silos are created and reinforced because now, there is something that we can use instead of talking.

This is when I think you should **stop writing acceptance criteria**.

For my hope is that a lack of a static and seemingly sensible reference point (a written up list) will serve as an encouragement. That the void will become filled with more collaboration. That people will, perhaps desperate with no other option, start to ask questions, to provide opinions and suggestions and start helping each other out.

Try it out. It might not be enough and many people will not like it. But it may lead you to a better place. You won't know unless you try.

Right?
