---
layout: blog
title: Build token
date: 2011-02-21 20:21:51.000000000 +00:00
author: Marcin
type: post
tags: [agile, teams]
---

{% figure caption: "release cow courtesy of Rachel Davies" %}
[![](/assets/images/2011/02/release-cow-150x150.jpg "118-1884\_IMG-Release-cow")](http://www.flickr.com/photos/42514466@N08/5407848023/)
{% endfigure %}

When software development teams start with the practice of [Continuous Integration](http://martinfowler.com/articles/continuousIntegration.html) (CI) coordinating check-ins and keeping the build clean can be a challenge. Some habits like making sure all unit tests pass locally, project builds correctly, and all relevant files are included, are not yet established. Introducing a simple _build token_ is often helpful. This is how [Rachel](http://agilecoach.typepad.com/about.html) and [Liz](http://www.agilecoach.co.uk/) describe it in their "[Agile Coaching](http://www.pragprog.com/titles/sdcoach/agile-coaching)" book:

> For this [CI] to work, developers need to avoid treading on one another's toes by attempting to integrate changes at the same time. Lots of teams use a _build token,_ which can be any object that makes it obvious to the rest of the team that there's an integration in progress. Teams have a bit of fun with this, which helps establish the CI process as a team ritual. We've seen teams use a rubber chicken, a moo cow, funny hats, and even a "Sword of Integration" made from index cards.

{% figure caption: "by energizer (Energized Work)" %}
[![](/assets/images/2011/02/5050724001_009d4ebd00_m.jpg "5050724001\_009d4ebd00\_m")](http://www.flickr.com/photos/agileinaction/5050724001)
{% endfigure %}

Mature and experienced teams usually no longer need to use a token yet they often choose to keep it or adopt its use. At [Energized Work](http://www.enegizedwork.com/), for example, we use a _broken build token_. If a pair breaks the build, they pick from a selection of [fancy hats](http://www.flickr.com/photos/agileinaction/2870360908/) to let the team know who is currently working to fix the problem. It is important as a broken build can impede others' progress. (It is also in line with the _stop the line_ Lean approach.)

Using a build token, however, can also have some _unintended consequences_ if dysfunctions obscure its intention.

#### Invisible token

The token only works if it is _visible to the whole team_. If the team is distribution across the office there are probably other priorities that need attention other than synchronising the use of source-code repository. For distributed teams on-line tools may be helpful but co-location is usually better.

#### Controlled token

Remember the (now ancient, I guess) [token ring](http://en.wikipedia.org/wiki/Token_ring) network topology? The build token should be able to travel around the team like a token in the token ring network. No one should _permanently_ claim its ownership. This can be particularly problematic if the owner happens to be the most senior developer or a manager trying to _control_ the token. Rather than helping to establish a common ritual and improve collaboration it becomes yet another whip for the team. With process becoming formalised and controlled, people begin to avoid it. The most likely outcome - integration frequency drops and one of the main benefits of CI is undermined. There is also the negative effects on morale when people feel treated like children who must ask mum every time they want to watch TV.

### Forced token

A build token is a tool to help with a concrete problem. Just because it worked for one team (in a specific set of circumstances and at a given time) does not mean it will be useful for everyone. Making it a _company-wide policy_ is another case when it may backfire. Some teams will be more experienced and will have established robust communication paths, they don't necessarily need a token (it can slow them down). Others will only share a code repository without a build server, they don't need it (yet). Above all, however, it is a tool for the team and it is the team who should reach a consensus on using the tool if it is to work to their benefit. Even, if a practice is generally helpful but have been forced upon you, there will simply be no desire to tap into its full potential.

### Embarrassing token

This is probably a minor problem and only relevant for immature teams. Yet if you notice someone in the team is less keen on holding on to the token they may be embarrassed by it. While intended to be funny or cute the choice of the token must meet everyone's approval.

### Token of shame

For the practice similar to that of the _failed build token_ there is another aspect to consider. If the level of trust is not high enough, especially for new people who join the team after it has been formed and bonded, holding a token that clearly indicates who broke the build can be discomforting. It might be fine generally but sometimes there is a fine line and crossing it will put people off. A practice of pair programming helps greatly in those circumstances as there is always someone else in the same situation.

_Have fun with your build token and use it wisely._
