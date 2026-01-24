---
layout: blog
title: Reclaim your clipboard in Visual Studio with ReSharper
date: 2011-02-24 15:54:30.000000000 +00:00
author: Marcin
type: post
tags: [IDE, productivity, software development]
---

I have been doing quite a bit of grails development recently and used [IntelliJ IDEA](http://www.jetbrains.com/idea/) IDE. In many respects it is a very good environment (as good as IDEs can be), for me more friendly and usable than NetBeans or Eclipse.

One of the features I really like is the [clipboard stacking](http://www.jetbrains.com/idea/features/essential_editing_features.html#Clipboard_stacking) which allows you to paste from your clipboard copy history.

Now I'm back doing some work  in Visual Studio 2010 and I was looking for similar functionality.

Out of the box VS2010 support the _ **CycleClipboardRing** _ option (Pastes an item from the Clipboard ring to the cursor location in the file. To paste the next item in the Clipboard ring instead, press the shortcut again) with CTRL+SHIFT+V and **CTRL+SHIFT+INSERT** as keyboard shortcuts. I found it slightly confusing and not as useful as the IntelliJ equivalent.

Fortunately I have [ReSharper](http://www.jetbrains.com/resharper/) installed (I struggle to do any work without it in Visual Studio anyway) and it has the very same feature as IntelliJ - look in the menu under _ReSharper \> Edit \> Paste_.

To take full advantage of it, I just swaped the default Visual Studio shortcut for the functionality provided by ReSharper by associating the **ReSharper.ReSharper\_PasteMultiple** command  with the right shortcut (under _Options \> Environment \> Keyboard_).

Now my clipboard is useful again.
