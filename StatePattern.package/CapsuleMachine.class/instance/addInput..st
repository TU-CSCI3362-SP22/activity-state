actions
addInput: string
	state = #NoInput 	ifTrue:  [ inputs add: string. state := #HasInput. ] .
	state = #HasInput 	ifTrue:  [ inputs add: string. ] .
	state = #Vending	ifTrue: [ self denyTransaction ].