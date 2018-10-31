---
layout: post
title:  "Number Thoery: Eulers Theorem"
date:   2018-10-31 17:43:00 -0400
categories: Number Theory
---

# Eulers Theorem
I'm going to try and explain [Eulers Theorem](https://en.wikipedia.org/wiki/Euler%27s_theorem), derived by the famous mathmatician [Leonard Euler](https://en.wikipedia.org/wiki/Leonhard_Euler).

I'll start by stating the theorem. As we hit new topics, I will sidetrack, tackle those topics and than continue on.

ɸmod𝒏𝒒

***Theorem.*** 

If <center>(𝒂, 𝒎) = 1</center> then, <center>𝒂<sup>𝟇(𝒎)</sup> ≡ 1 (mod 𝒎)</center>


We first must figure out how to  𝟇(𝒎).
We will use a technique known as inclusion/exclusion. Namley, 𝟇(𝙥), where 𝙥 is a prime can be written <center>𝟇(𝙥<sup>𝙠</sup>) = 𝙥<sup>𝙠</sup> - 𝙥<sup>𝙠-1</sup></center>
This tells us how to find 𝟇 of a prime. We can show an example of this.

*Example.* Find 𝟇(4). 

We can break 𝟇(4) into its prime factors ⇒ 𝟇(2<sup>2</sup>). Since 2 is a prime, we can use our rule of <center>𝟇(𝙥<sup>𝙠</sup>) = 𝙥<sup>𝙠</sup> - 𝙥<sup>𝙠-1</sup></center> 
So, 
<center>𝟇(2<sup>2</sup>) = 2<sup>2</sup> - 2<sup>2-1</sup></center>
Which simplfies to, 
<center>𝟇(2<sup>2</sup>) = 4 - 2</center>
Which evaluates to, 
<center>𝟇(2<sup>2</sup>) = 2</center>




