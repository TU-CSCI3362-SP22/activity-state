actions
submit: text
	state = #HasInput 	ifTrue: [ inputs add: text. ] .
	state = #NoInput 	ifTrue: [ inputs add: text. state := #HasInput. ].
	state = #Vending	ifTrue: [ inputs add: text. state := #HasInput. ].