actions
addFortune: text
	state = #HasInput 	ifTrue: [ inputs add: text. ] .
	state = #NoInput 	ifTrue: [ inputs add: text. state := #HasInput. ].
	state = #Vending	ifTrue: [ self denyTransaction: 'You''ve already submitted your fortunes!' ].