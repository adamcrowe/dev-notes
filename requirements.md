# BDD

> **Behavior-driven development** specifies that tests of any unit of software should be specified in terms of the desired behavior of the unit. Borrowing from agile software development the "desired behavior" in this case consists of the requirements set by the business — that is, the desired behavior that has business value for whatever entity commissioned the software unit under construction. Within BDD practice, this is referred to as BDD being an "outside-in" activity. -- [Wikipedia: Behavior-Driven Development](https://en.wikipedia.org/wiki/Behavior-driven_development)

> Behaviour-driven development (BDD) takes the position that you can turn an idea for a requirement into implemented, tested, production-ready code simply and effectively, as long as the requirement is specific enough that everyone knows what’s going on. To do this, we need a way to describe the requirement such that everyone – the business folks, the analyst, the developer and the tester – have a common understanding of the scope of the work. From this they can agree a common definition of “done”, and we escape the dual gumption traps of “that’s not what I asked for” or “I forgot to tell you about this other thing”. This, then, is the role of a Story. It has to be a description of a requirement and its business benefit, and a set of criteria by which we all agree that it is “done”. This is a more rigorous definition than in other agile methodologies, where it is variously described as a “promise of a conversation” or a “description of a feature”. (A BDD story can just as easily describe a non-functional requirement, as long as the work can be scoped, estimated and agreed on.) -- [Dan North: What's in a Story?](https://dannorth.net/whats-in-a-story/)

> A story should be the product of a conversation involving several people. A business analyst talks to a business stakeholder1 about the feature or requirement, and helps them to frame it as a story narrative. Then a tester helps define the scope of the story – in the form of acceptance criteria – by determining which scenarios matter and which are less useful. A technical representitive will provide a ballpark estimate of the amount of work involved in the story, and to propose alternative approaches. Many great ideas for systems come from the people developing them as well as the people who asked for them in the first place. This will likely be an iterative process. The stakeholder will have an idea of what they want but will usually not know how much work will be involved, or how that work will be allocated. With the help of the technical and testing experts, they will understand the cost/benefit trade-off of each scenario and can make a judgement about whether they want it. Of course this is also balanced up against the other requirements: is it better to cover more edge cases in this story, or to move on to another story? Sometimes the development team will simply not know enough to be able to make even a ballpark estimate. In this case they may choose to carry out some investigative work, known as a “spike”, in order to understand more about the requirement. -- [Dan North: What's in a Story?](https://dannorth.net/whats-in-a-story/)

> The story should be small enough to fit in an iteration: There are no hard and fast rules about how you do this, as long as you break it down into demonstrable chunks. In general if there are more than about five or six scenarios, a story can probably be broken down by grouping similar scenarios together. We can’t tell from the ATM example how many more scenarios there are for this story, but I am suspicious that there may be several more. Essentially we have three “moving parts” in this story, namely the account balance, the status of the cash card and the state of the ATM. We could get into more detail with the cash card: what if it is out of date, so I can’t use it to withdraw cash but the ATM still returns it to me? What if the ATM breaks partway through the transaction? What if my account has an overdraft facility? It might be better to break the story out into several smaller stories:

* Account Holder withdraws cash (assumptions: ATM is working and card is valid)
* Account Holder withdraws cash with invalid card (assumptions: ATM is working)
* Account Holder withdraws cash from flaky ATM (assumptions: card is valid)

> Although this may seem artificial, it allows you to demonstrate progress in business terms and gives you more data points to track with. -- [Dan North: What's in a Story?](https://dannorth.net/whats-in-a-story/)

> The important thing is always to break the story out along business lines by scenarios (and making the assumptions explicit) rather than along technical lines (e.g. doing the database stuff in this iteration and the GUI stuff in the next iteration). This is so the business can see demonstrable progress on their own terms rather than just taking your word for it. -- [Dan North: What's in a Story?](https://dannorth.net/whats-in-a-story/)

## User Stories

### TEMPLATE
* As a (person or role who will benefit),
* I want (some feature),
* so that (the benefit or value of the feature).

### EXAMPLES

#### Customer withdraws cash
* As a customer,
* I want to withdraw cash from an ATM,
* so that I don't have to wait in line at the bank.

## Scenarios/Specifications

### TEMPLATE
* Given some (initial context),
* When an (event occurs),
* Then (ensure some outcomes).

### EXAMPLES 

#### Scenario 1: Account is in credit
* Given the account is in credit,
* And the card is valid,
* And the dispenser contains cash,
* When the customer requests cash,
* Then ensure the account is debited,
* And ensure cash is dispensed,
* And ensure the card is returned.

#### Scenario 2: Account is overdrawn past the overdraft limit
* Given the account is overdrawn,
* And the card is valid,
* When the customer requests cash,
* Then ensure a rejection message is displayed,
* And ensure cash is not dispensed,
* And ensure the card is returned.

## Story and Scenarios/Specifications

### EXAMPLES

#### Story: Returns go to stock
* As a store owner,
* In order to keep track of stock,
* I want to add items back to stock when they're returned.

#### Scenario 1: Refunded items should be returned to stock
* Given that a customer previously bought a black sweater from me,
* And I have three black sweaters in stock,
* When he returns the black sweater for a refund,
* Then I should have four black sweaters in stock.

#### Scenario 2: Replaced items should be returned to stock
* Given that a customer previously bought a blue garment from me,
* And I have two blue garments in stock,
* And three black garments in stock,
* When he returns the blue garment for a replacement in black,
* Then I should have three blue garments in stock,
* And two black garments in stock.

## Testing

### GIVEN-WHEN-THEN

> Use the given-when-then format for greater precision about what is being tested.

```javascript

describe("Given a string containing 'foo'", function() { 
	var someString; 
	beforeEach(function() { 
		someString = "foo"; 
	}); 

	describe("When I append 'bar'", function() { 
		beforeEach(function() { 
			someString += "bar"; 
		}); 

		it("Then the string is 'foobar'", function() { 
			expect(someString).toBe("foobar"); 
		}); 
	});
}); 
```

## References
* [Dan North: Introducing BDD](https://dannorth.net/introducing-bdd/)
* [Dan North: What's in a Story?](https://dannorth.net/whats-in-a-story/)
* [Wikipedia: Behavior-Driven Development](https://en.wikipedia.org/wiki/Behavior-driven_development)
* [Jasmine Documentation](https://jasmine.github.io/)
* [Stack Overflow: Why Jasmine is called a “BDD” testing framework even if no “Given/When/Then” supported?](https://stackoverflow.com/questions/33984182/why-jasmine-is-called-a-bdd-testing-framework-even-if-no-given-when-then-sup)
