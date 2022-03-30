actions
submit
	state = #HasInput 	ifTrue: [ self preparePrizes. state := #Vending ] .
	state = #NoInput 	ifTrue: [ self denyTransaction ].
	state = #Vending	ifTrue: [ self denyTransaction ].