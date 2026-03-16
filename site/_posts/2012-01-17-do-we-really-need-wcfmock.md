---
layout: blog
title: Do we really need WCFMock
date: 2012-01-17 11:04:13.000000000 +00:00
author: Marcin
type: post
tags: [C#, tdd, WCF]
---

I was writing some WCF services recently (driving development with unit tests, naturally) and eventually bumped into the problem I guess all authors of WCF services eventually bump into. I had to use the <tt>OperationContext.Current</tt>.

A bit of googling revealed, unsurprisingly, I'm not the only person struggling to mock the <tt>OperationContext</tt>. It turns out there is also a solution out there. It's called [WCFMock](http://wcfmock.codeplex.com/) with a nice description is this blog post: "[WCFMock, a mocking framework for WCF services](http://weblogs.asp.net/cibrax/archive/2009/03/08/wcfmock-a-mocking-framework-for-wcf-services.aspx)".

While it looked promising I have two reservations about it. The first one hides in this line:

```
#if DEBUG
using WebOperationContext = System.ServiceModel.Web.MockedWebOperationContext;
#endif
```

When doing TDD one of the rules I try to follow is never to bend the production code for the requirements of the test. Sure, I design the code so that it is testable. However, the production code is there to fulfil the functional and non-functional requirements (or to deliver value through working software if you like) and I want to make sure I test the same code that will run live.

The other reservation I have with the proposed approach is that it doesn't really express the dependencies of the piece of code in question explicitly.

Look at the <tt>GetProducts</tt> operation on the <tt>ProductCatalog</tt>. The following line is where we need the context:

```
WebOperationContext.Current.OutgoingResponse.ContentType = "application/atom+xml";
```

But we only need the context because we want to set the correct <tt>ContentType</tt> on the response. Using the context just happens to be the way to achieve it.

Perhaps we could replace this line with a more explicit one like this (and there's probably still more to be improved in terms of naming)

```
operationResponse.SetContentType(ContentTypes.Atom)
```

We replaced a reference to <tt>OperationContext</tt> with a reference to <tt>operationResponse</tt>. The <tt>operationResponse</tt> should be defined as an interface and can be injected in the constructor just like the repository is in the example given. Our test method now becomes slightly shorter and more readbale

```
public void ShouldGetProductsFeed()
{
    {
        var repository = new InMemoryProductRepository(
                new List<product>{
            new Product { Id = "1", Category = "foo", Name = "Foo1", UnitPrice = 1 },
            new Product { Id = "2", Category = "bar", Name = "bar2", UnitPrice = 2 }
        });
        var operationResponseHandler = new Mock<operationresponsehandler>();

        var catalog = new ProductCatalog(repository, operationResponseHandler.Object());

        var formatter = catalog.GetProducts("foo");
        var items = formatter.Feed.Items;

        operationResponseHandler.Verify(x =&gt; x.SetContentType("application/atom+xml"));
        Assert.AreEqual(1, items.Count());
        Assert.IsTrue(items.Any(i =&gt; i.Id == "http://products/1" &amp;&amp; i.Title.Text == "Foo1"));
    }
}
</operationresponsehandler></product>
```

I personally prefer this approach as we don't need to go into the details of the <tt>OperationContext</tt>. Naturally, we'll have to implement our new interface for production and it will eventually have to reference the context, but we can keep that bit separately and test it in an integration test. I would probably split and name the above unit test as well, but that's a completely different story.
