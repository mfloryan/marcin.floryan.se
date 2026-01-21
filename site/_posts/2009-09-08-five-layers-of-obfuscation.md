---
layout: blog
title: Five layers of obfuscation
date: 2009-09-08 12:35:36.000000000 +00:00
author: Marcin
type: post
tags: [architecture, code, design]
---
The other day I was looking at one web application, probably like many similar across organisations, where a team of architects ensure the enterprise standards of application design are observed.

I needed to add a new menu item so I started with the UI layer to see where the menu is displayed. Well, that wasn't as easy as I expected but I finally found the bit of code. No surprises here, it gets some data from the business layer and dumps it on the screen. I was expecting slightly more HTML in the code, I'll find it in the layer below I thought.

So I dig deeper.

It turned out data for the menu does come from a business layer but it's called via a web service and so it actually took another layer of transforming objects into XML back into objects before I traced where the data is assembled.

Another surprise, the business layer code barely mentions I'm dealing with a menu, there are no menu-specific domain objects or HTML markup I thought got buried here. Instead there are some generic data object and a reference to the data access layer.

So I dig deeper.

Welcome to level 4, the Data Access Layer, otherwise known as DAL. Here, I would be expecting simple calls passed through to the database of some sorts. Will I be surprised by an unexpected addition of some HTML adornments? No. Instead there is a lot of logic dealing with user security, access levels, calls to some spurious stored procedures and... yes, you're right a call to the SQL Stored Procedure returning the menu structure. I'm still not sure how it needs quite so many parameters.

So I dig deeper.

At last, the final level in the hierarchy, I hit the rock hard bottom and in front of my very eyes a monstrosity of a Stored Procedure unveils. It's a few hundred lines long, it makes calls to several other stored procedures, the missing HTML is lurking around here all-right and some data got hard-coded as it clearly didn't fit the table design.

I wonder, is this the structure that the enterprise architects&nbsp;envisaged? Was it an evil DBA insisting to control all the data? Was it a developer more at home with T-sql than .Net?

I don't know. What I do know, is that it's not an N-tier architecture. It's five levels of obfuscation that could easily put off anyone trying to make any sense of the design.
