---
layout: blog
title: The abuse of refactoring
date: 2012-09-19 22:56:56.000000000 +00:00
author: Marcin
type: post
tags: refactoring
---

Observing different software teams which try to adopt an improved approach to software development I watch how they begin to adopt some new terminology. They didn’t have pairing, sprints or stand-ups or stories before and now there is an abundance. Many teams also didn’t talk about it before and are now beginning to use and abuse the term “refactoring”. I see two patterns emerging.

### Refactoring as a deferral excuse

As a new story is being developed different questions naturally appear about some of the implementation details. It might be around an unclear bit of design or consistency of implementation or performance characteristics. Often, instead of taking time to reflect and discuss the questions with the whole team, some random solution is adopted with a solemn declaration that _“we’ll refactor it later”_. Well, in my books refactoring is about improving your code’s design while you’re developing some functionality. Of course the refactoring part itself is changing the code’s design without affecting its behaviour, but I feel it should be done as part of the story you’re working on to be able to build new functionality. It’s part of your toolkit and part of what makes you a good developer. Such clean-up and improvements cannot be left for later.  
To be clear, I’m not advocating over-engineering your code or building in performance or security concerns prematurely. I believe it is important to always deliver only “the simples thing that could possibly work”. It’s also fine to change and rewrite your code as you learn more about your system. Only I don’t call this refactoring – I call this iterative development.

### Refactoring as an excuse for poor quality

The ability to say: _“this will be refactored later”_ can also create a trap for the developers. It masks lack of knowledge or understanding of the product being build or technology being used. The promised “refactoring” effort never materialises because the development is plodding ahead, features must be delivered, new stories worked on. As time goes on it is not becoming easier to “refactor” but increasingly difficult. We not only don’t learn about the problem we had but slowly forget what it was all about in the first place. By pretending that some magical “refactoring” effort can solve our problems for us in the unspecified future we are compromising the quality of our solution today.

The next time someone suggests that something can be “refactored” ask them to implement the refactoring in mind immediately or forget about it altogether.
