# State Activity - Universal Fortune Machine!

## What is the State Pattern?

[State Pattern](https://www.google.com/url?q=https%3A%2F%2Flearning.oreilly.com%2Flibrary%2Fview%2Fhead-first-design%2F9781492077992%2Fch10.html%23sharpen_your_pencil-id000312&sa=D&sntz=1&usg=AOvVaw3IR7fqrzyzeeQdLOClNHn_)

The state pattern is based on state machines, those fun things you may have learned about in Theory. You have multiple states, and all the behavior of the program is based on which state you're in. Transitioning between states is what changes the program's behavior.

Let's make some states!

## Introducing: The Fortune Machine!

At Incorporated Enterprises INC's R&D Laboratory a powerful new idea has emerged! A fortune machine *of the people*!
In order to receive wisdom, you must first dispense it. The machine takes in submitted strings, one at a time, in an `input` queue. Each one representing your own personal words of wisdom. Upon vending you get the same number of random fortune strings that were submitted to the machine. Our engineers believe that by connecting this machine to the internet we could have *universal wisdom*.

The fortune machine holds its current state in the instance variable `state`. The instance variable `library` holds all the possible fortunes (we have lovingly supplied some for you), `prizes` holds all the dispensed strings, and `inputs` holds all the beautiful fortunes you've put in but haven't yet added to the library (inputs get added to the library using the `vend` function, at the same time you get your fortunes.)

To use the machine, first make a machine with `FortuneMachine new`, then submit any fortunes you want to give it with `machine submit: 'fortune'`. When you're done, run `machine vend` to get YOUR pre-ordained fortunes from the machine. REMEMBER: you can only vend from the same machine once, UNLESS you use our helper function `resetMachine`.

Inspect the function of the fortune machine!

Submission test!

```smalltalk
|machine|
machine := FortuneMachine new.
machine submit: 'I am submitting to the machine'.
machine vend.
```

Submit multiple strings!

```smalltalk
|machine|
machine := FortuneMachine new.
machine submit: 'I am submitting to the machine'.
machine submit: 'I am another string in the machine'.
machine vend.
```
## Revelation!
Your boss just got back from his trip to Nepal and wants to ensure the fortune machine stands in line with *everyone's* values! Only universally accepted wisdom should be dispensed! This is going to mean adding a user-submittable word filtering system! Create a word filter that censors our user-submitted filter substrings from fortunes. Maybe replace the "unwise" inputted substring with asterisks?



Look at all the conditionals in the FortuneMachine's action methods! We have to edit all those? ooof. This all seems pretty messy. Good thing our fortune machine runs pharo!

1. Add a new instance variable to `FortuneMachine` called `filteredWords`
2. Ensure you have accessors for `filteredWords`
3. Add a new action method `wordFilterMode`, which will need several lines to check for state and transitions.
  - You should only be able to enter the `#WordFilter` state from the `#NoInput` state -- you have to decide what to filter out BEFORE you submit! This means that `wordFilterMode` should only successfully change the state if `state = #NoInput`. Otherwise, you should use `denyTransaction: 'error text'` to tell the user what they did wrong.
  - experience disgust. It looks bad, right?
4. Edit the rest of the action methods to include the new `#WordFilter` state
  - You will have to add another `ifTrue` check to each action method to make sure the program is behaving properly
  - In the `#WordFilter` state, `submit: text` should add text to inputs, just like it does in `#HasInput`.
  - However, in this state, `vend` should `addAll` the inputs to the `filteredWords` variable, and it should also change `state` to `#NoInput`.
5. Implement your word filter in `dispensePrizes` on the library to ensure nobody gets a naughty fortune when the machine vends!
  - Hint! Open Finder and pull up the OrderedCollection class to look for available methods that might help you :)
  - You can do this however you want -- fully deleting the string, censoring parts of it, replacing the whole string with a different one...etc, as long as you do not show offending strings.
6. See if you can get the word filter to apply in the Playground, make sure to apply your word filter before starting to use `machine submit:`.
 
# Let's apply the State pattern!

![Now we're going to put all the behavior of a state into one class.](now.png)

Wouldn't it work better if we were to take this one behavior of the fortune machine and encapsulate it, so we can avoid the messy inheritence situation from turning each state into a subclass of fortune machine or chaining we have the state pattern!

1. Create a `FortuneState` class with subclasses `HasInput` `WordFilter` `NoInput` and `Vended` seperate from `FortuneMachine`
2. Now, `FortuneMachine` is going to represent the machine itself, and `FortuneState` will represent the machine's state.
  - To do this, `FortuneMachine` will hold an instance variable that contains its current `FortuneState`, and the `FortuneState` will hold a class variable that contains the `FortuneMachine` it is associated with.
3. Create and instantialize a new `FortuneMachine` as an instance variable of `FortuneState`, called `machine`. It will also need instance variables for `library`, `inputs`, `prizes`, and `filteredWords`.
  - This should be your initialize method:
   ```
   initialize
	super initialize.
	state := NoInput forMachine: self.
	library := OrderedCollection withAll: #('fortune 1' 'fortune 2' 'sdfbsdg' 'dskjvghdfskjg').
	inputs := OrderedCollection new.
	prizes := OrderedCollection new.
	filteredWords := OrderedCollection new.
	^ self.
  ```
4. Change all the action methods from `FortuneMachine`. Now, all they should do is send on the function to their state. (i.e.  `submit: text` should do `state submit: text`).
5. Add methods to `FortuneState` for the action methods `submit:`, `vend`, and `wordFilterMode` which delegate subClassResponsibility
6. In each state subclass, add the appropriate behavior for the action methods within the context of that state.
  - Reference the state diagram below to see which states should be able to transition to other states, and which methods should cause them to transition.
  - If someone tries to do something they can't do, such as going into `wordFilterMode` while they are in the state `HasInput`, it should send a `denyText` message to the machine instance variable (ex. `machine denyText: 'You have to make filters before submitting!`). This means that `HasInput`'s `wordFilterMode` method should deny the user.
  - To transition to a new state, you will be calling `machine state: (StateName forMachine: machine)`. This should be done according to the state diagram below.
7. Ensure that the action methods of the state subclasses correctly transition ex: `machine state: (Vended forMachine: machine)`
8. The `vend` method in the WordFilter state should add any submitted strings to our `FortuneMachine`'s word filter! All behavior should be the same as your earlier version.

### States:
 - No String to add (`NoInput`)
 - Strings to add (`HasInput`)
 - Word filter to add (`WordFilter`)
 - Fortunes vended (`Vended`) 
 ![State diagram](https://media.discordapp.net/attachments/321782818625814528/958769172517650502/adfsadfdsfsdf.jpg)
 - example: when you are in `NoInput` and you call `submit: text`, it should (along with any other behavior) transition to the `HasInput` state by calling `machine state: (HasInput forMachine: machine)`.

Izzy Thompson, Katie Browne, [Turner Hall (contact info)](https://gnu3.xyz/)


