---
layout: post
title:  "When search slows you down"
date:   2019-1-10 17:43:00 -0400
categories: Computer Science
---


# When search slows you down


When I began programming I had a simple process. 

1. Code until I got stuck on something
2. Search google (StackOverflow)
3. Go to step 1

My process worked pretty well, slowly but surley I had my first app on the App Store (Find the pixel) and I felt like I could program anything. Afterall, if I got stuck, search google and continue. 

Even today, over 5 years later, I make use of google search. It's my go to. Obviously I have picked up stuff along the way but as I venture into new categories I need the help from internet. 

So what's with the title? I just told you that searching lets me get stuff done. Helps me learn. When would search slow me down? 

The problems isn't when you search, its afterwards. Which links you choose. What you look for. What satisfies you. 

If you search "updating my local repository from my remote" you'll see a link to StackOverflow, [Updating a local repository with changes from a Github repository](https://stackoverflow.com/questions/1443210/updating-a-local-repository-with-changes-from-a-github-repository), a protected question with over 400 upvotes. Scrolling down you'll see the [answer](https://stackoverflow.com/a/1443232/3080828): 

> probably:
>
> `git pull origin master`

Tada! You found the answer. Type that command into your terminal and what happens? You guessed it. Exactly what you wanted! 

Still confused what the issue is? 

One day you'll be programming and you'll want to update your local repository with the updates sitting in the "upstream" or original repository. How do you do this?

This is where the problem appears. You already searched how to update your local repository with a remote one, you just made your search too specific. You only learnt how to do a special case of what can be genearlly thought about as updating your local repository. There's what to say about "skill" in searching and knowing how to phrase things in the best way and sometimes a more general phrasing can result in a more knowledge learn, other times, you'll be searching for a long time to find a suitable answer. Putting the art of searching aside, the issue that we have here is that the StackOverflow question above was a very specific answer to a very specific question. If you search like this, you'll end up making multiple unnecessary searchs. You don't actually understand the underlying concept. This is where search starts to slow you down. The answers are online and they are accessable, but looking online is always slower than searching your brain. Additionally, when you learn the answer to specific questions, rather than the general concept, you fill you brain with specific answers. You think, how do I pull from my remote repository, `git pull origin master`. That thought is taking up part of your brain storage. A single more general concept can help you answer multiple questions and take up the same amount of space as one concept. I remember taking multi-variable calculus with a professor who derived everything. He knew the core concepts well enough that he didn't need to keep on hand every formula and equation. If he needed it, he could get it. 

In the case mentioned above the answer your looking for can be found on [github](https://help.github.com/articles/fetching-a-remote/#pull) although finding this is harder than you'd expect simply because of the number of links that show above this one on your typical google search. Here you'll see that github explains that the command `git pull` takes two preceding arguments, `remotename` and `branchname`. The command looks like:

```bash
git pull <remotename> <branchname>
```

From this snippet of code you can see that the words "origin" and "upstream" don't mean anything. They are simply remote names which can be changed to whatever your heart desires. Same goes for "master". The difference between pulling from your remote or the "upstream" remote? Nothing. 

But wait! Theres more...

What is a remote? What does origin mean? 

Remote names are simply aliases. We use them so that we dont have to type out `https://.....` each time we want to `pull` or `push` or `fetch etc.

I use `git` as an example but this shows up all over the place. If you search a topic, try to understand it. Searching is a great tool, when used right. If you feel yourself making unnecessary searches, you probably are. Delve into the topic a bit more, try a see if theres a more general form for what your trying to achieve. 

I don't expect this article to enlighten you. I hope it just reminds you of something you already know.

Ehud.