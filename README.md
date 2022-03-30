# State Activity

1. What is the State Pattern?


2. The Fortune Machine!

Inspect the function of the fortune machine!

Submission test!

```smalltalk
|machine|
machine := CapsuleMachine new.
machine submit: 'I am submitting to the machine'.
machine vend.
```

Submit multiple strings!

```smalltalk
|machine|
machine := CapsuleMachine new.
machine submit: 'I am submitting to the machine'.
machine submit: 'I am another string in the machine'.
machine vend.
```

3.Boss wants tfure the fortune machine stands in line with *everyone's* values! This is going to mean adding a user-submittable word filtering system!
(doing it bad)


This all seems pretty messy. Good thing our capsule machine runs pharo!

4. Let's apply the State pattern!

![Now we're going to put all the behavior of a state into one class.](now.png)

Wouldn't it work better if we were to take this one behavior of the capsulemachine and encapsulate it, so we can avoid the messy inheritence situation from turning each state into a subclass of capsule machine or chaining we have the state pattern!

... the good way (todo)


### States:
 - No String to Add
 - Strings to add
 - Word filter to add
 - string vended (they are just strings other people uploaded)

Izzy Thompson, Katie Browne, [Turner Hall (contact info)](https://gnu3.xyz/)


