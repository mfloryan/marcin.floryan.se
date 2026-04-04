---
layout: blog
title: Developer's flight control
date: 2010-05-27 11:16:24.000000000 +00:00
author: Marcin
type: post
tags: [code, planning]
---

Over a month ago Polish government air plane, Tu-154, [crashed in Russia](https://news.bbc.co.uk/1/hi/world/europe/8612825.stm). All 88 passengers and crew died. On board were top state officials including the President of Poland Lech Kaczyński, his wife, members of the government, several MPs across all parties, chairman of the National Bank of Poland, Military chiefs including chief of the General Staff, cultural and religious figures. The country has suffered a huge loss. It was beyond doubt the most tragic event in Poland's modern history.

Following a joint investigation by Russian and Polish experts (still ongoing) some facts begin to emerge and likely causes are being discussed. Sadly I can't resist the feeling I've seen this before. Having read Gladwell's "Outliers" and Ori & Rom Brafman's "[Sway: The irresistable pull of irrational behaviour](https://www.swaybook.com/)", where authors analyse some famous air disasters, I can see a pattern emerging. Here are some facts about the Polish crash:

- Extremely bad weather conditions - fog limiting visibility to below 100 m - air control recommended against landing
- Non-crew member in the cockpit - one of the generals on board trying to make sure his pilots are doing a proper job
- Outdated equipment - airport with only basic navigation equipment and lacking the ILS system
- Unfamiliar environment - pilots were not familiar with the airport and seem to have overlooked local terrain formation including a ravine that influenced height sensors' readings
- Missing obvious warning signs - TAWS sounding "pull up" alarm 18s before the crash but there was no reaction until 10s later

A string of multiple little problems and errors, none on its own sufficient to cause a disaster, came together to a deadly effect.

Now back to software development there is a parallel to be draw. Fortunately very rarely can developers, unlike pilots, cause such disasters. Often enough thought I have seen large-scale project failures that came from a string of little problems and errors

- bad weather conditions - legacy, tangled, unclean code that obscures developer's vision
- old airport - lack of automated tests and continuous integration infrastructure
- strangers in the cockpit - senior managers micro-managing progress of development
- unknown terrain - requirements unclear and constantly changing
- ignored warning signs - overworked developers, stalled progress, significant rework all can be early signs of problems

Watch out for the next project about to crash and act in advance. Keep you eyes open and mind fresh.

PS. Agile will help.
