# ABSTRACTION
> Violations of DRY (Don't Repeat Yourself) are typically referred to as WET solutions, which is commonly taken to stand for "write every time",  "write everything twice", "we enjoy typing" or "waste everyone's time".
>
> &mdash; [Don't Repeat Yourself](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself)

> Abstraction is the attempt to reduce complexity by combining repeated commonality into some generalisation.
>
> &mdash; [Beginner’s Guide To Abstraction](https://jesseduffield.com/beginners-guide-to-abstraction)

> Duplication is far cheaper than the wrong abstraction.
>
> &mdash; [Sandi Metz: The Wrong Abstraction](https://sandimetz.com/blog/2016/1/20/the-wrong-abstraction)

## Processes

### General

1. Identify different chunks of code that are all essentially doing the same thing
2. Create a method/class with a narrow interface that can be substituted in for all those chunks of code
3. Wwap out the chunks of code with a call to the method/class

### The Rule of Three
> Rule of three ("Three strikes and you refactor") is a code refactoring rule of thumb to decide when similar pieces of code should be refactored to avoid duplication. It states that two instances of similar code don't require refactoring, but when similar code is used three times, it should be extracted into a new procedure.

## Rationale

### When in Doubt, Do Not Abstract

> If you've found two files that each share a chunk of code, but you're not sure that you would always want the code to evolve in lockstep, don't abstract. It's much easier to abstract than to de-abstract, so there is no harm in waiting until some more use cases pop up and you get a better idea of what a good interface might look like.

### Abstraction is Always a Gamble

> In the world of software engineering, when requirements are always changing, every abstraction is a gamble. When you make an abstraction over some concrete things, you're making a bet that the concrete things are more similar than they are different, and that their similarities are not mere coincidences: that there is a common purpose shared by the concrete things which would lead them to evolve in lockstep as requirements evolve. If you win the bet, your codebase will be easier to work in and adding new use cases via your abstraction will be trivially easy. If you lose, you'll see a flash of fear in your colleague's eyes whenever they're assigned a ticket to make yet another extension to the misfigured monster that the once-innocent abstraction has now become

> But risk abounds everywhere, and leaving duplicated code unabstracted is its own gamble. You're betting that the chunks of code will evolve in separate directions as requirements change and that their current similarities are more coincidence than a reflection of their common purpose. Win the bet and your colleague gets to sleep soundly at night knowing they won't be facing the abstraction monster at work the next day. Lose, and code that should have evolved in lockstep is now implemented in completely different ways across different files, where a developer fixes a bug identified in one place, only for the same bug to be reported days later in a completely different file.

> Your job is to get good at making the right bets.

### The Right/Wrong Abstraction

> You'll know that you've made the right abstraction when a long time passes and you haven't needed to expand the interface (an example of expanding the interface is adding an optional flag argument). You'll also know you've made the right abstraction when another developer doesn't find it that much harder to understand how the code behaves for a given use case than if somebody had written the code to satisfy the use case without the abstraction.

> You'll know you've made the wrong abstraction when after a while the interface has been expanded to support various optional flags, each for a different use case, and you need to be a genius to reason about what the code will actually do for a given use case.

> The main sign that you're over-abstracting is that your method accepts a bunch of optional args...when the number of optional arguments is roughly equal to the number of different use cases, chances are you've got the wrong abstraction.

> If you commonly get feedback that your methods are hard to understand because they support too many disparate use cases at once, you are probaby over-abstracting and should consider whether you should increase your tolerance for duplication.

> Abstractions go bad over time because as you expand the interface more and more, it becomes harder and harder to judge how appropriate the abstraction is to any given use case, and developers end up assuming that all that convoluted code is vaguely relevant to the majority of use cases when in fact it's not.

### Wrong Abstraction Code Smells

- Optional arguments (e.g., `type`)
- Switching on `type` in several places
- Returning null for a specific `type` within a method that is non-applicable

### Undoing a Wrong Abstraction

> Existing code exerts a powerful influence. Its very presence argues that it is both correct and necessary. We know that code represents effort expended, and we are very motivated to preserve the value of this effort. And, unfortunately, the sad truth is that the more complicated and incomprehensible the code, i.e. the deeper the investment in creating it, the more we feel pressure to retain it (the "sunk cost fallacy"). It's as if our unconscious tell us "Goodness, that's so confusing, it must have taken ages to get right. Surely it's really, really important. It would be a sin to let all that effort go to waste."

> ... The code no longer represents a single, common abstraction, but has instead become a condition-laden procedure which interleaves a number of vaguely associated ideas. It is hard to understand and easy to break. Of you find yourself in this situation, resist being driven by sunk costs. When dealing with the wrong abstraction, the fastest way forward is back. Do the following:

1. Re-introduce duplication by inlining the abstracted code back into every caller.
2. Within each caller, use the parameters being passed to determine the subset of the inlined code that this specific caller executes.
3. Delete the bits that aren't needed for this particular caller.

> This removes both the abstraction and the conditionals, and reduces each caller to only the code it needs. When you rewind decisions in this way, it's common to find that although each caller ostensibly invoked a shared abstraction, the code they were running was fairly unique. Once you completely remove the old abstraction you can start anew, re-isolating duplication and re-extracting abstractions.

> The moral of this story? Don't get trapped by the sunk cost fallacy. If you find yourself passing parameters and adding conditional paths through shared code, the abstraction is incorrect. It may have been right to begin with, but that day has passed. Once an abstraction is proved wrong the best strategy is to re-introduce duplication and let it show you what's right. Although it occasionally makes sense to accumulate a few conditionals to gain insight into what's going on, you'll suffer less pain if you abandon the wrong abstraction sooner rather than later.

# References
- [Don't Repeat Yourself](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself)
* [Abstraction principle (computer programming)](https://en.wikipedia.org/wiki/Abstraction_principle_(computer_programming))
- [The Wrong Abstraction](https://sandimetz.com/blog/2016/1/20/the-wrong-abstraction)
- [Beginner’s Guide To Abstraction](https://jesseduffield.com/beginners-guide-to-abstraction)
- [Rule of three (computer programming)](https://en.wikipedia.org/wiki/Rule_of_three_(computer_programming))
- [The Rule of Three](https://andrewbrookins.com/technology/the-rule-of-three)
