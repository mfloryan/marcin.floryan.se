---
layout: blog
title: Agile Teams Are Neglecting Design
date: 2012-03-27 21:12:35.000000000 +00:00
author: Marcin
type: post
tags: [agile, design, frameworks, software development]
---

Agile teams are neglecting design.

I can already hear your objections. Surely, you will say, many Agile teams these days do test-driven development and [TDD](https://en.wikipedia.org/wiki/Test-driven_development) is all about design. I absolutely agree, after all, I dare not question [Uncle Bob](https://sites.google.com/site/unclebobconsultingllc/) who, in his ["Agile Principles, Patterns, and Practices in C#"](https://www.amazon.com/Agile-Principles-Patterns-Practices-C/dp/0131857258) book clearly says

> "The act of writing a unit test is more an act of design than of verification".

The problem, however, is not if we are doing TDD but how we are doing it. Writing unit tests before production code, watching the tests fail, writing corresponding production code until the test passes and then refactoring requires discipline. Many new Agile teams lack that discipline. To gain the full benefits of TDD also requires a lot of practice and teams may simply have not had the time to accrue enough.[  
 ![Close-up of yellow metal scaffolding covering a building facade](/assets/images/2012/03/454726783_6ba61c86fb.jpg "Scaffolding from flickr by Brett Weinstein under cc-by-sa 2.0 license")](https://www.flickr.com/photos/nrbelex/454726783/in/photostream/)

These two obstacles aside, I still don't see the practice of TDD shaping the design of teams' code in a way that [Steve](https://twitter.com/sf105) and [Nat](https://twitter.com/#!/natpryce) describe in their excellent "[Growing Object-Oriented Software, Guided by Tests](https://www.amazon.com/Growing-Object-Oriented-Software-Guided-Signature/dp/0321503627)" book. I think among the reasons sits this one: **frameworks**.

I see this time and time again: a new engaged, eager and energised Agile team sits together to start a new project. They want to break away from the old ways of working. They have already been freed from the heavyweight processes which required lengthy documents, endless approvals and then subjected them to a stream of bugs arriving weeks or months after they last touched the affected code. They also take this as an opportunity to break away from the technical baggage accumulated over the years. Not doing so would be to neglect the [Conway's law](https://c2.com/cgi/wiki?ConwaysLaw).

And then what does a team do? They pick a framework. Chances are, if you are an Agile team writing a website in .Net you will go for the [ASP.NET MVC](https://www.asp.net/mvc) framework. If you are trying to move away from the monstrosities of Java Enterprise frameworks or got tired of Spring you might be moving to [grails](https://grails.org). If you are more daring you drop you old technology altogether and pick [rails](https://rubyonrails.org/). Add an ORM on top or something from the [NoSQL](https://en.wikipedia.org/wiki/NoSQL) pallet and your fresh new architecture is ready waiting for you.

While there is absolutely nothing wrong with these frameworks and technologies, making such choice means you have given up design decisions that you would have otherwise had to think about. You start working within a framework and then your thinking re-focuses to consider how best to fit your problem into the skeleton which is already in place. It might be slightly awkward to write some of the unit tests but you just blame that on your inexperience with the new technique.

Isn't it ironic, that as we free ourselves from the rigidity of the organisational processes we are willing to subject ourselves to the rigidity of the framework structures.

In the short time, we go astonishingly quickly, new functionality flows into releases, new pages appear, database expands magically and there is none of that old hand-crafted SQL to worry about. Many Agile teams are probably still at this stage. The will go on to neglect design, they won't question the structure of their code at various levels, they won't reevaluate their architecture. Then strangely, release by release, they start to slow down. Features become more difficult to implement, changes solidify, codebase stagnates. [  
](https://www.flickr.com/photos/nrbelex/454726783/in/photostream/)

I just hope it's not your team.
