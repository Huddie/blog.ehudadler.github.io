## My Favorite Technical Interview Question

I got the idea to write this post from a google engineer, Alex Golec. He wrote a blog post deconstructing an interview question which he was fond of and asked often. Check out his post: [Google Interview Questions Deconstructed: The Knight’s Dialer](https://hackernoon.com/google-interview-questions-deconstructed-the-knights-dialer-f780d516f029).

Anyways, I am far from having an interview question I ask often since I'm still in school and am on the recieving end of interview question but nevertheless I have a favorite.

I was asked this question by my friend Julian Moskovits when I requested a mock interview from him. I will first state the question and then explain my thought process as I go about answering it.

### Question. 

Your given an array of integers, find the greatest difference between 2 adjacent indices.

One reason I love this question is because it is very clear as to what the question is asking, yet leaves a bunch of room for the candidate to ask clarifying questions. 

My first move when I was asked this question was to clarify a few things. I wanted to know:

* Are the elements sorted?
* What do I return? Both indices? The difference?
* What happens if there are 2 equal answers
* Can I have a negetive difference or is it the absolute difference?
* Can the numbers be negetive?

I was told that the elements would not necessarily be sorted and that I was required to return the first of the 2 indicies. If there are 2 equal answers return the first of the them and the type of difference is the absolute difference. Lastly, the integers will all be positive.

Alright, we should have all the information we need. 

Let's draw a basic picture:

| 1 | 3 | 2 | 8 | 7 |
----|---|---|---|----

We can loop through this list one time, checking the difference between the current index and the next index (We only loop until length - 2 to avoid and out of bounds error). At each index we check if the difference between the current value and the next value is greater than the previous greatest difference we had seen. If it is, store the current index and the new greatest difference. If it is not, move on.

This will look something like:

```cpp
	int greatestDifference = -1, currentDifference;
	int index = 0;
	int numbers[] = {1, 3, 2, 8, 7}
	
	for(int i = 0; i < sizeof(numbers)/ sizeof(int) - 1; i++) { 
			currentDifference = abs(numbers[i] - numbers[i+1]);
			if(currentDifference > greatestDifference) {
				index = i;
				greatestDifference = currentDifference;
			}
	}
	
	std::cout << index;
```

Visually we are looking at something like this (The arrow denotes the index we are looking at
):


| Index | Diff | 1 | 3 | 2 | 8 | 7 |
----|---|---|---|-----|---|----
| 0 | -1       | ⬆︎  |  |  | | |

| Index | Diff | 1 | 3 | 2 | 8 | 7 |
----|---|---|---|-----|---|----
| 0 | 2 | ⬆︎ |  |  | | |

| Index | Diff | 1 | 3 | 2 | 8 | 7 |
----|---|---|---|-----|---|----
| 0 | 2 |  |⬆︎ |  | | |

| Index | Diff | 1 | 3 | 2 | 8 | 7 |
----|---|---|---|-----|---|----
| 2 | 6 |  |  |⬆︎  | | |

| Index | Diff | 1 | 3 | 2 | 8 | 7 |
----|---|---|---|-----|---|----
| 2 | 6 |   |  |  | ⬆︎ | |

| Answer | 
----|
| Index 2 |


If you got this, GREAT JOB!! If not, don't worry about it, you know it now!

But the question does not end there. 

Julian expanded the question by asking me what happens if you can compare any 2 elements, not just those adjacent to each other.

This expansion means we need to approach the problem differently. We can no longer loop through the array one time since we need to test each index against every other index, not just the one next to it. This would mean we would need a nested for loop. I asked Julian if this solution would do and he said although it works, he wants the asymptotic time to be O(n) not O(n^2).

If you think about this a litte more you'll hopefully realize that the greatest difference will always be the greatest integer subtracted by the smallest integer. This results in the following discovery. If you loop over the array keeping track of the smallest and greatest interger, you can then return the index of whichever of those two comes first.

The code would look something like this:
 
```cpp
	int greatest = 0, smallest = 0;
	int greatestIndex = 0, smallestIndex = 0;
	int numbers[] = {1, 3, 2, 8, 7}
	
	for(int i = 0; i < sizeof(numbers)/ sizeof(int); i++) { 
			if(numbers[i] > greatest) {
				greatestIndex = i;
				greatest = numbers[i];
			}
			if(numbers[i] < smallest) {
				smallestIndex = i;
				smallest = numbers[i];
			}
	}
	
	std::cout << greatestIndex < smallestIndex ? greatestIndex : smallestIndex;
```

Hopefully this makes sense. 
If you got this, GREAT JOB!! If not, don't worry, you know it now!

At this point you've gotten through 2/3 of the question and hopefully pretty quickly. Usually you would only be asked to program one of these two and just verbally state the other. The second half is clearly a bit more complicated than the first but nothing too bad. 

This is another thing I love about this question. Nothing is too bad or too complicated, it just builds on itself and requires a bit of thinking. The programming is pretty straight forward.

Okay so Julian wasn't going to let me off yet. He has one final part. 

Up until now we've been using absolute difference. Meaning we substract two numbers and take the absolute value. This last section switches that up. Difference in this section is calculated as the number in the earlier index minus the number in the later index. 

For example, take the array 

| 1 | 3 | 2 | 8 | 7 |
----|---|---|---|----

The difference between index 1 and index 2 is not 2 but -2.

Hopefully you understand, if not, always ask for clarification.

This question is hard because now the order in which the numbers show up matters. If we tried out min/max approach that worked for part 2 we would be in trouble whenever we calculated the min/max where the smaller interger came before the larger one. In that scenario we'd get back a negetive which is not (necessarily) the correct answer. (usually not). 

I suggest taking a crack at this yourself. 

If you came up with a nested for loop, that works. If you suggested that answer your interviewer would most likley say that works but we want to solve this faster. You'd also probably be asked the asymptotic time complexity (which for a nested for loop is O(n^2)).

If you came up with the nested for loop solution try to think about it abit more. 

If you need a hint try starting from the end of the array instead of the beginning.

Okay so whats the solution?

We can solve this in O(n) or linear time. To do this we start from the end of the array and we use a data structure to hold some key information.

I will first state the algorithm, than show the code and finally a visual example.

###### Algorithm

We will hold currentSmallest variable, and an array of size n.

1. Set currentSmallest to the last element in the array
1. Loop from the 2nd to last element until the first element.
	1. If the previous index's value is less than the currentSmallest
		2. Set currentSmallest to the previous index's value 
	3. Insert the current index's value - currentSmallest into the equivalent index of our new array
4. Find the largest value in our new array, the first index which that value sits in the answer.

###### Code

```cpp

	int numbers[] = {1, 3, 2, 8, 7};
   	int tracker[5] = {};
   	int length = sizeof(numbers)/ sizeof(int);
   	int currentSmallest = numbers[length - 1];

   	for(int i = length - 2; i >= 0; i--) {
           	tracker[i] = numbers[i] - currentSmallest;
           	if(numbers[i] < currentSmallest) {
               	currentSmallest = numbers[i];
          	}
   	}
   	
	for(int i : tracker) {
        std::cout << i << " "; 	// -1 1 -5 1 0
    }
 
	int index = findFirstMaxIndex(tracker, length);
	std::cout << index;
	
```

###### Visual

| Smallest | 1 | 3 | 2 | 8 | 7 |
----|---|---|---|-----|---|----
| 7 |   |  |  |⬆︎ | |
| Tracker|        |  |  |  | 0 |

| Smallest | 1 | 3 | 2 | 8 | 7 |
----|---|---|---|-----|---|----
| 7 |   |  | ⬆︎ | | |
| Tracker|        |  |  |  1 | 0 |

| Smallest | 1 | 3 | 2 | 8 | 7 |
----|---|---|---|-----|---|----
| 2 |   | ⬆︎| |   | |
| Tracker|        |  | -5 | 1| 0 |

| Smallest | 1 | 3 | 2 | 8 | 7 |
----|---|---|---|-----|---|----
| 2 | ⬆︎ | | | | |
| Tracker|       -1 | 1 |-5 | 1| 0 |

| Answer | 
----|
|Index 1 |

That it. If you solved this part, Great Job! If not, don't sweat it, it's not so simple. Just try and make sure you fully understand it now.

