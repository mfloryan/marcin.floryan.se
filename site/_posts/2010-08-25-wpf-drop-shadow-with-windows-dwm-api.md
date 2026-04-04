---
layout: blog
title: WPF drop shadow with Windows DWM API
date: 2010-08-25 19:08:03.000000000 +00:00
author: Marcin
type: post
tags: [".NET", C#, software development, Windows]
---

Ever since I started writing windows applications, even though most of them were not in C or C++, almost every time I would refer back to Charles Petzold's [**Programming Windows**](https://www.charlespetzold.com/pw5/index.html). Whether it was Visual Basic, Delphi, .NET or even Java, there would eventually come a point, where the only way to achieve something would be to dig into the Win32 API and hook into the [message loop](https://en.wikipedia.org/wiki/Message_loop_in_Microsoft_Windows) directly.

I don't know why I thought writing a WPF application in .NET 4 for Windows 7 would be any different.

If you start with a default empty window it is rendered nicely with a drop shadow around it (like all other windows).

![](/assets/images/2010/08/WPF-Window.png "WPF-Window")

However, I wanted to achieve an alternative layout, without the frame but with the shadow still on. Unfortunately setting `WindowStyle="None"` creates a rather blunt rectangle.

![](/assets/images/2010/08/WPF-Window-no-frame-300x197.png "WPF-Window-no-frame")There is always the option to do something inside the client window to pretend your window actually does have a shadow but it is somewhat messy and just not as pretty (or perhaps I wasn't ready to tinker with the Canvas and Effects enough). So will say it also comes with a performance penalty (since you would require transparent background).

![](/assets/images/2010/08/WPF-Window-some-transparency.png "WPF-Window-some-transparency")

Finally, with a little bit of Interop spice by calling [Desktop Window Manager](https://msdn.microsoft.com/en-us/library/aa969540(VS.85).aspx) APIs I got the desired effect:

![](/assets/images/2010/08/WPF-Window-native-shadow.png "WPF-Window-native-shadow")Mind you it only works if DWM is available (that is in Vista and Windows7) but I'm fine with that.

Here is the required code:

```csharp
[DllImport("dwmapi.dll", PreserveSig = true)]
public static extern int DwmSetWindowAttribute(IntPtr hwnd, int attr, ref int attrValue, int attrSize);

[DllImport("dwmapi.dll")]
public static extern int DwmExtendFrameIntoClientArea(IntPtr hWnd, ref Margins pMarInset);

void ShellWindow_SourceInitialized(object sender, EventArgs e)
{
    var helper = new WindowInteropHelper(this);
    int val = 2;
    DwmSetWindowAttribute(helper.Handle, 2, ref val, 4);
    var m = new Margins
    {
        bottomHeight = -1,
        leftWidth = -1,
        rightWidth = -1,
        topHeight = -1
    };
    DwmExtendFrameIntoClientArea(helper.Handle, ref m);
}
```

If you want to dig deeper there is [WPF Shell Integration Library](https://code.msdn.microsoft.com/WPFShell) that does some of this heavy lifting for you.

P.S. Seems like Java folks have [similar challenges](https://www.milewski.ws/2009/05/vista-glass-in-swt-application-continuation/).
