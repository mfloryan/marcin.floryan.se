---
layout: blog
title: Slow down to improve quality
date: 2012-10-23 09:43:35.000000000 +00:00
author: Marcin
type: post
tags: quality
---

[![](/assets/images/2012/10/Fotothek_df_n-21_0000017_Facharbeiter_für_Qualitätskontrolle.jpg "Facharbeiter für Qualitätskontrolle from Wikimedia Commons under cc-by-sa-3.0")](http://commons.wikimedia.org/wiki/File:Fotothek_df_n-21_0000017_Facharbeiter_f%C3%BCr_Qualit%C3%A4tskontrolle.jpg)How many times have you witnessed a conversation in a software team about their product’s quality? Every week? Every day? I seem to be privy to such conversations at least once every iteration. In my experience one of the common arguments put forward is that “quality of our solution suffers because we’re going too fast”. It’s usually accompanied by notion of regret that the team is under too much pressure to deliver to tight deadlines, with unrealistic expectations and thus has no choice but to sacrifice the quality of what’s being built. They know there is technical debt and it’s mounting... _if only they could slow down_.

Until very recently I used to sympathise with this notion wholeheartedly. I still believe that software teams should find a sustainable pace to proceed with and have sufficient slack to improve. There is something about the idea that “slowing down will lead to improved quality” however, that I’m becoming slightly uncomfortable with.

I'm currently reading a really interesting book (thank you [Dan](http://danrough.net/)) called “[Dreaming in Code](http://www.dreamingincode.com/)”. It's a fascinating story of a software project called [Chandler](http://chandlerproject.org/) led by [Mitch Kapor](http://www.kapor.com/) (you remember Lotus 1-2-3, right?). What I found particularly interesting about this story is that it talks about a team, in many aspects very similar to every other team out there, which has one particular advantage. They are spared the lamented “commercial pressure”. They got together to create a revolutionary product with a strong financial backing at the level that allowed them to have the freedom many teams don’t get to experience. From that point of view I found it fascinating to read about all the problems they have struggled with – the problems which look very similar to the ones teams working on “commercial” products face and attribute to the “business imperative”. So perhaps there’s something more fundamental that we’re facing?

The idea, I realised, that “_our quality suffers because we’re going too fast_” has at least two blatant implicit assumptions that I was blind to:

- that our quality problems are caused by the delivery pressures and the speed we decided to go at;
- that by simply “slowing down” we will be able to address many of the problems we struggle with in terms of code quality;

Today I'm convinced the answer is not that simple. To deliberately incur technical debt and sacrifice quality for expediency we must know what good quality looks like in first place. We supposedly have an idea of what “good, clean code looks like” and suggest that “it takes longer to write it in such a way”. But what if the team leaving the quality behind does so because they have no idea how to write better, cleaner, more readable code? What if, slowing down only means it takes longer time to write similar mess? What if the extra time is used for padding out the work? What guarantee do we have, that the few extra points we save during an iteration will be turned into valuable and meaningful learning for the team?

Yes. It is important to give people writing software the opportunity to learn and improve. Yes. It requires time. Yes. External (or self-imposed) pressure doesn't help. No. Just slowing down is not the answer; at least not the full answer.
