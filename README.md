# State Activity

## Virtual capsule machine with user-editable text capsules
- Based off of example of gumball machine from Head First Design Patterns (Eric Freeman, Elisabeth Robson)
 - The quarters in the machine are images and the capsules/"gumballs" are text strings. For every text string submitted, a corresponding random string will be dispensed.
- random number of uploaded string duplication in the the capsule machine, randomizing chances of user-uploaded "capsules"
- (Time Permitting) Rarity printout sheet with the rarest strings in the machine

Non-refactored codebase - "Bad" codebase will not have an imaged state and only support uploading one capsule to recieve one capsule. Activity will be to seperate the functionality of upload and dispense and add an imaged state, allowing uploading multiple images one at a time, to recieve more corresponfing dispensed images.

... the bad way (todo)

Inspect the results:

Submission test!

```smalltalk
|machine|
machine = CapsuleMachine new.
machine submit: 'I am submitting to the machine'.
machine vend.
```

Submit multiple strings!

```smalltalk
|machine|
machine = CapsuleMachine new.
machine submit: 'I am submitting to the machine'.
machine submit: 'I am another string in the machine'.
machine vend.
```

![Now we're going to put all the behavior of a state into one class.](now.png)

... the good way (todo)

### States:
 - No String to Add
 - Strings to add
 - Dispenser Denial ("you need to submit first!")
 - "Capsules" Dispensed (they are just strings other people uploaded)

Izzy Thompson, Katie Browne, [Turner Hall (contact info)](https://gnu3.xyz/)


