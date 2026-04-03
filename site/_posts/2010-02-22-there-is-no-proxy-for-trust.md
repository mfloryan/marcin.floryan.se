---
layout: blog
title: There is no proxy for trust
date: 2010-02-22 21:50:33.000000000 +00:00
author: Marcin
type: post
---

If you work in IT Internet access is taken for granted. I know no one who could to their .Net job without [google](https://www.google.com), [MSDN](https://msdn.microsoft.com/en-gb/library/default.aspx), [StackOverflow](https://stackoverflow.com/ "StackOverflow") and plethora of other resources on the web, including [social networking](https://twitter.com/) sites. (Well, [Jon Skeet](https://msmvps.com/blogs/jon_skeet/) perhaps.) You get the access and implicitly agree to use it wisely and efficiently, this is what responsible professionals do.

[![tunnel-stage1](/assets/images/2010/02/tunnel-stage1-300x128.png "tunnel-stage1")](/assets/images/2010/02/tunnel-stage1.png)Assume however, that your company, theoretically, have decided to restrict access to the Internet and forward all traffic through a proxy server. That proxy will then filter some of the traffic and block things like [webmail](https://mail.google.com/), social networking sites, media streaming services, IM, etc. It will usually be done for 'security' reasons.

[![tunnel-stage2](/assets/images/2010/02/tunnel-stage2-300x128.png "tunnel-stage2")](/assets/images/2010/02/tunnel-stage2.png)So the company would have done what companies (that is, senior management) like doing most - solving management problems with technology.

If you were to find youself in such situation is there anything that could be done to allow you to keep working? Here is one idea: find a server on the internet, create ssh tunnel via the corporate proxy into that server and proxy your internet access from the external machine. This is roughly what the setup would look like:

[![tunnel-stage3](/assets/images/2010/02/tunnel-stage3-300x128.png "tunnel-stage3")](/assets/images/2010/02/tunnel-stage3.png)

And this is what you would need:

1.) An ssh client (like [putty](https://www.chiark.greenend.org.uk/%7Esgtatham/putty/)) on your local machine that can connect _through the proxy_ to a remote machine on the internet (that is assuming the HTTP proxy server accepts HTTPS connections with the [CONNECT](https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol) command, which most proxies do) and do port forwarding. Here are some sample settings:

[![putty-proxy](/assets/images/2010/02/putty-proxy-150x150.png "putty-proxy")](/assets/images/2010/02/putty-proxy.png) [![putty-tunnel](/assets/images/2010/02/putty-tunnel-150x150.png "putty-tunnel")](/assets/images/2010/02/putty-tunnel.png)

2.) A remote machine that can listen for SSH connections on port 443 and that has a local proxy server. Apache running [mod\_proxy](https://httpd.apache.org/docs/2.2/mod/mod_proxy.html) will do.  I hope I don't have to emphasize the need to secure mod proxy.

What happens is putty connects through the corporate proxy to your remote proxy and forwards remote proxy's local port to your local PC. You then need to point your [browser of choice](https://microsoftontheissues.com/cs/blogs/mscorp/archive/2010/02/19/the-browser-choice-screen-for-europe-what-to-expect-when-to-expect-it.aspx) to use localhost:8080 as its proxy server.

If your corporate proxy were to be protected (as I hope most basic corporate proxies would be) you will need to provide username and password. If you live in Microsoft world chances are the proxy authentication mechanism of choice will be [NTML](https://en.wikipedia.org/wiki/NTLM "NTLM"). This would pose an additional problem since putty [can't handle](https://www.putty.nl/wishlist/ntlm-auth.html) this authentication mechanism. There would be a simple solution however, just overlay **another proxy on top**. A nifty little Fast NTML Authentication Proxy in C - [cntlm](https://cntlm.sourceforge.net/) would do the job.

[![tunnel-stage4](/assets/images/2010/02/tunnel-stage4-300x128.png "tunnel-stage4")](/assets/images/2010/02/tunnel-stage4.png)

So you could theoretically do all the above and would probably breach at least half a dozen corporate policies. Being a responsible professional you would never do so. Instead you'd ask yourself a simple question - if you are not trusted to use the Internet in a responsible way, perhaps it's time to [look for another job](https://careers.stackoverflow.com/).
