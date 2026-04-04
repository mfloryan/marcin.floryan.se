---
layout: blog
title: Stop measuring defects
date: 2010-01-17 21:47:00.000000000 +00:00
author: Marcin
type: post
tags: [code, testing, management]
---

![410px-Nuvola_apps_bug_and_broom.svg](/assets/images/2010/01/410px-Nuvola_apps_bug_and_broom.svg-300x281.png "410px-Nuvola_apps_bug_and_broom.svg")Stop measuring defects. Just stop. I know, it might sound like a heresy. So far most IT project I have worked on, among different measures (that is, if they had any) have had the number of defects as one of the important indicators. Often people would use this number to show how well the test team is working (by finding as raising lots of defects) and how good the developers are (by quickly fixing and closing them). Some go even further to use the number of defects to evaluate the quality of code. If it's low - developers brag how good their work is; if it's high - testers grumble how bad the product is; and whatever the value, management is always pressing to lower it (I already see those quarterly targets emerging) . Rule is simple - few defects - good quality, many defects - poor quality.

That's all nice, it's a simple figure, easy to obtain and very easy to fight battles for, only I think it's not really working.

First of all, the measure is very ambiguous and thus misleading (no two defects are alike). It doesn't correlate with quality either. There are many better indicators of quality, that by now, should be easy to measure (you have a source control repository and do automated builds right?) - you could start at unit test coverage, cyclometric complexity, class coupling, total number of automated tests,...

There is yet another reason I don't like projects tracking explicitly the number of defects. It can cause rivalry or tension between developers and testers. It's an easy stick for the management to beat people with (too few defects - testers are not doing their job properly, too many - developers are failing). If it sounds naive and artificial - you're lucky to have worked with great teams and sensible managers. Recently I have also noticed it make agile transformation harder as it disrupts cross-functional teams.

So now that you have stopped counting defects put your energy into protecting against them in the first place and eliminating any that appear as quickly as possible with as little ceremony around the process.

Don't get me wrong. I don't believe in defect free software (just like black swans - because you haven't seen one doesn't mean they don't exist). I don't suggest neglecting them either, nor do I think tester are unnecessary (they can in fact play an incredibly important role in helping developers not create defects). I have simply seen the measure abused too many times by now.

_Update:_

I have found an interesting post on the subject of agile defect management: [https://www.agileadvice.com/2007/08/21/agileengineering/agile-and-lean-defect-tracking/](https://www.agileadvice.com/2007/08/21/agileengineering/agile-and-lean-defect-tracking/)
