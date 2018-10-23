---
layout: post
title:  "Riddle 1: Products of Consecutive Numbers"
date:   2018-10-22 16:43:00 -0400
categories: Riddle
---

Lets take a look at a riddle. 

## Q1: Equal Product of <font size="5">&integers;</font> 1 - 20

#### Question
Your given a bag filled with the integers (<font size="4">&integers;</font>) 1 - 20 inclusive.
Your tasked with spilitting these **Integers** into **2** sets such that the product of *Set A* and *Set B* are equal. Is it possible to fulfill your task (Split them up according to the rules mentioned above) *or* is this task impossible. 


#### Answer
⚠️ **Spoiler Alert**.. Always try to solve the riddles yourself first ⚠️ 

The task is impossible. We can prove this through a proof by contradiction. 

Imagine you **were** able to split up the first 20 Integers into 2 sets such that the product of *Set A* and the product of *Set B* are equal. We can say that the product of *Set A* is equal to <font size="4">𝒏</font> and the product of *Set B* is equalt to <font size="4">𝒎</font>

So we have,
<br> <font size="4">&prod;</font> *Set A* = <font size="4">𝒎</font>
<br> <font size="4">&prod;</font> *Set B*  = <font size="4">𝒏</font>

Since we are assuming we are able to complete this task, we can write <font size="4">𝒎</font> = <font size="4">𝒏</font>

We know from Number Theory that every number has a **Unique Prime Factorization**. This just means that we can write any number as a product of primes and that there is only **1** way to do so.

What follows from this is that the **Unique Prime Factorization** of <font size="4">𝒎</font> must be the same **Unique Prime Factorization** as <font size="4">𝒏</font>. This ends up being impossible. 

Notice how 19 is a Prime. 

This means that 19 is either in *Set A's Factorization* or *Set B's Factorization* but **NOT BOTH**

This means that  *Set A's Factorization* is different from *Set B's Factorization* which means <br><font size="4">&prod;</font> *Set A* <font size="4">≠</font> <font size="4">&prod;</font> *Set B* <sub>◼︎</sub>

## Q2: Equal Product of <font size="5">&integers;</font> n - n+19

#### Question
The question here is the same as Q1 with one modification. Instead of Integers 1-20, we will use integers n-n+19. The question can be stated as so: Does there exists 20 consecutive integers that can be split into 2 sets such that their products are equal.

#### Answer
⚠️ **Spoiler Alert**.. Always try to solve the riddles yourself first ⚠️ 

The answer is no. You cannot split up 20 consecutive integers into 2 sets such that their products are equal. 

The proof for this is a bit more complicated than the last. 

We know that 1-20 is impossible because it contains a prime that non of the other 19 integers can break up into (19/11/7 in the 1-20 case).

This leads us to a proof that if one of the 20 integers is prime, an no multiple of that prime is one of the other 19, than it is impossible to solve.

We know 23 is a prime. Since 23 is greater than 20, we can be sure that if a multiple of 23 is in our list, no other multiple of 23 is in our list.

Example:

If our list is: 44 - 45 - **46** - 47 - 48 - 49 - ....... - 64

46 is a multiple but no other multiples of 23 exist (Note: The next multiple is 69).

The same is true for the prime 29. 

We can know use this knowledge to prove that every list of 20 consecutive numbers that starts at a number greater than 3 cannot be split into 2 groups such that their products are equal.

Sequences that start with the number:
3 - 23 (23\*1)
23, 24, 25 (29)
26 - 49 (23*2)

Using strong induction you can prove this applies to all numbers <sub>◼︎</sub>





