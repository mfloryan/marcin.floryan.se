---
layout: blog
title: Object to code serializer
date: 2010-06-29 13:21:48.000000000 +00:00
author: Marcin
type: post
tags: [".NET", C#, software development]
---

[![](/assets/images/2010/06/some-object-initialisers-300x240.png "some-object-initialisers")](/assets/images/2010/06/some-object-initialisers.png)

I found myself today needing some simple DTO classes for unit tests to extend existing services and controllers. We're using .NET 3.5 so [Object and Collection Initializers](http://msdn.microsoft.com/en-us/library/bb384062.aspx) come in really handy for mocking out services and providing data. If the object graph is somewhat bigger crafting the data by hand is quick but somewhat cumbersome.

Yet we usually have that data somewhere and getting a hand on an instance that might just need a bit of tweaking later is easy. I really wanted something that would serialise an instance of an object (perhaps obtained while debugging) into object initialiser syntax that I can paste back into the code.

I was disappointed I couldn't google anything useful, but then perhaps my googling skills are not as good as my coding skills so I wrote something quickly instead. A bit of reflection and recursion and it's there.

You can download it from CodePlex [http://objectserialiser.codeplex.com/](http://objectserialiser.codeplex.com/)

It is extremely sketchy but does the job for me.

![](/assets/images/2010/06/initialiser-serialiser-example.png "initialiser-serialiser-example")

Is anything better out there? Ideally, this could now be hooked into Visual Studio somehow to make the job even easier. Unfortunately [Code Visualisers](http://msdn.microsoft.com/en-us/library/zayyhzts.aspx) won't do the job as they can't be registered for "object".
